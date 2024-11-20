#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"
#include <GLFW/glfw3.h>
#include <iostream>
#include <fstream>
#include <string>

// Prototypes for your encode/decode functions
std::string encodeFile(const std::string& filePath, const std::string& message);
std::string decodeFile(const std::string& filePath);

void ShowMainWindow() {
    static bool encode = true; // Toggle between Encode/Decode
    static char filePath[256] = ""; // File path input
    static char message[512] = "";  // Message for encoding
    static std::string output = ""; // Output message for decoding

    ImGui::Begin("Steganography Frontend");

    // Encode or Decode toggle
    if (ImGui::RadioButton("Encode", encode)) {
        encode = true;
        output = "";
    }
    ImGui::SameLine();
    if (ImGui::RadioButton("Decode", !encode)) {
        encode = false;
        output = "";
    }

    // File selection
    ImGui::InputText("File Path", filePath, sizeof(filePath));

    if (encode) {
        // Input message for encoding
        ImGui::InputText("Message", message, sizeof(message));
    }

    if (ImGui::Button("Submit")) {
        try {
            if (encode) {
                // Call encoding function
                std::string result = encodeFile(filePath, message);
                output = "File encoded successfully: " + result;
            } else {
                // Call decoding function
                output = "Decoded message: " + decodeFile(filePath);
            }
        } catch (const std::exception& e) {
            output = std::string("Error: ") + e.what();
        }
    }

    // Display output
    if (!output.empty()) {
        ImGui::TextWrapped("%s", output.c_str());
    }

    ImGui::End();
}

int main() {
    // Initialize GLFW
    if (!glfwInit()) {
        std::cerr << "Failed to initialize GLFW!" << std::endl;
        return -1;
    }

    // Setup OpenGL version
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3); // OpenGL 3.x
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE); // Core Profile
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // Required for macOS

    // Create a GLFW window
    GLFWwindow* window = glfwCreateWindow(800, 600, "Steganography Frontend", nullptr, nullptr);
    if (!window) {
        std::cerr << "Failed to create GLFW window!" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1); // Enable vsync

    // Initialize ImGui
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;

    ImGui::StyleColorsDark();

    // Initialize ImGui backend
    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init("#version 330");

    // Main loop
    while (!glfwWindowShouldClose(window)) {
        glfwPollEvents();

        // Start ImGui frame
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

        ShowMainWindow();

        // Rendering
        ImGui::Render();
        int display_w, display_h;
        glfwGetFramebufferSize(window, &display_w, &display_h);
        glViewport(0, 0, display_w, display_h);
        glClearColor(0.1f, 0.1f, 0.1f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

        glfwSwapBuffers(window);
    }

    // Cleanup
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();
    glfwDestroyWindow(window);
    glfwTerminate();

    return 0;
}