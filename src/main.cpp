#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include <GLFW/glfw3.h>
#include <iostream>
#include <string>
#include "encode.h"
#include "decode.h"

using namespace std;

// Class to encapsulate main window logic
class MainWindow {
private:
    // State variables
    bool encode = true;               // Toggle between Encode/Decode
    bool encodeTextFile = false;      // Toggle between encoding a message or a text file
    
    // Use of C-style strings for input fields (ImGui doesn't support std::string)
    char filePath[512] = "";          // File path input (target file for encoding/decoding)
    char textFilePath[512] = "";      // Text file path input (for encoding text files)
    char message[512] = "";           // Message input (for encoding messages)
    char password[512] = "";          // Password input (for encoding/decoding)
    string output = "";               // Output message for decoding or success

    // Render options for encoding
    void RenderEncodeOptions() {
        ImGui::Checkbox("Encode Text File", &encodeTextFile);
        if (encodeTextFile) {
            ImGui::Text("Enter the path to the text file to encode into the target file.");
            ImGui::InputText("Text File Path", textFilePath, sizeof(textFilePath));
        } else {
            ImGui::Text("Enter the message to encode into the target file.");
            ImGui::InputText("Message", message, sizeof(message));
        }

        // Password input
        ImGui::Text("Enter a password:");
        ImGui::InputText("Password", password, sizeof(password), ImGuiInputTextFlags_Password);
    }

    // Handle form submission
    void HandleSubmit() {
        try {
            if (encode) {
                if (encodeTextFile) {
                    string result = encodeText(filePath, textFilePath);
                    output = "Text file encoded successfully: " + result;
                } else {
                    string result = encodeMessage(filePath, message);
                    output = "Message encoded successfully: " + result;
                }
            } else {
                output = "Decoded message: " + decode(filePath);
            }
        } catch (const exception& e) {
            output = "Error: " + string(e.what());
        }
    }

    // Render the output message
    void RenderOutput() {
        if (!output.empty()) {
            ImGui::Text("Output:");
            ImGui::Separator();
            ImGui::TextWrapped("%s", output.c_str());
        }
    }

    // Apply custom styling for the UI
    void ApplyStyling() {
        ImGuiStyle& style = ImGui::GetStyle();
        style.WindowRounding = 5.0f;
        style.FrameRounding = 5.0f;
        style.FramePadding = ImVec2(10, 8);
        style.ItemSpacing = ImVec2(10, 10);

        // Custom colors
        ImVec4* colors = style.Colors;
        colors[ImGuiCol_WindowBg] = ImVec4(0.15f, 0.15f, 0.2f, 1.0f);
        colors[ImGuiCol_Button] = ImVec4(0.2f, 0.5f, 0.8f, 1.0f);
        colors[ImGuiCol_ButtonHovered] = ImVec4(0.3f, 0.6f, 0.9f, 1.0f);
        colors[ImGuiCol_ButtonActive] = ImVec4(0.1f, 0.4f, 0.7f, 1.0f);
        colors[ImGuiCol_Header] = ImVec4(0.2f, 0.5f, 0.8f, 1.0f);
        colors[ImGuiCol_HeaderHovered] = ImVec4(0.3f, 0.6f, 0.9f, 1.0f);
        colors[ImGuiCol_HeaderActive] = ImVec4(0.1f, 0.4f, 0.7f, 1.0f);
    }

public:
    // Render the main window
    void Render() {
        ApplyStyling();

        // Match GLFW window size and position
        int display_w, display_h;
        glfwGetFramebufferSize(glfwGetCurrentContext(), &display_w, &display_h);
        ImGui::SetNextWindowPos(ImVec2(0, 0));
        ImGui::SetNextWindowSize(ImVec2((float)display_w, (float)display_h));

        // Start ImGui window
        ImGui::Begin("Steganography", nullptr, ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove);

        // Encode or Decode toggle
        ImGui::Text("Mode:");
        if (ImGui::RadioButton("Encode", encode)) {
            encode = true;
            output = "";
        }
        ImGui::SameLine();
        if (ImGui::RadioButton("Decode", !encode)) {
            encode = false;
            output = "";
        }

        // File path for the target file (image/audio)
        ImGui::Text("Enter the path to the target file (.png or .wav).");
        ImGui::InputText("Target File Path", filePath, sizeof(filePath));

        if (encode) {
            RenderEncodeOptions();
        }
        else {
            // Password input
            ImGui::Text("Enter the password used for encoding:");
            ImGui::InputText("Password", password, sizeof(password), ImGuiInputTextFlags_Password);
        }
        

        // Submit button
        if (ImGui::Button("Submit")) {
            HandleSubmit();
        }

        // Render output
        RenderOutput();

        ImGui::End();
    }
};

// Main application window class
class AppWindow {
private:
    GLFWwindow* window;     // GLFW window instance
    MainWindow mainWindow;  // Main window instance

public:
    AppWindow(const char* title, int width, int height) {
        if (!glfwInit()) {
            throw runtime_error("Failed to initialize GLFW!");
        }

        // Setup OpenGL version
        glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
        glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
        glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
        glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);

        // Create GLFW window
        window = glfwCreateWindow(width, height, title, nullptr, nullptr);
        if (!window) {
            glfwTerminate();
            throw runtime_error("Failed to create GLFW window!");
        }
        glfwMakeContextCurrent(window);
        glfwSwapInterval(1);

        // Initialize ImGui
        IMGUI_CHECKVERSION();
        ImGui::CreateContext();
        ImGui::StyleColorsDark();

        ImGui_ImplGlfw_InitForOpenGL(window, true);
        ImGui_ImplOpenGL3_Init("#version 330");
    }

    ~AppWindow() {
        ImGui_ImplOpenGL3_Shutdown();
        ImGui_ImplGlfw_Shutdown();
        ImGui::DestroyContext();
        glfwDestroyWindow(window);
        glfwTerminate();
    }

    void Run() {
        while (!glfwWindowShouldClose(window)) {
            glfwPollEvents();
            ImGui_ImplOpenGL3_NewFrame();
            ImGui_ImplGlfw_NewFrame();
            ImGui::NewFrame();

            // Render the main window
            mainWindow.Render();

            // Rendering
            ImGui::Render();
            int display_w, display_h;
            glfwGetFramebufferSize(window, &display_w, &display_h);
            ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

            glfwSwapBuffers(window);
        }
    }
};

int main() {
    try {
        AppWindow appWindow("Steganography Frontend", 800, 600);
        appWindow.Run();
    } catch (const exception& e) {
        cerr << e.what() << endl;
        return -1;
    }
    return 0;
}
