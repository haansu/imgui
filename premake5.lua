project "ImGUI"
	kind "StaticLib"
	language "C"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
        "imgui.h",
		"imgui.cpp",
		"imconfig.h",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"backends/imgui_impl_glfw.h",
		"backends/imgui_impl_glfw.cpp",
		"backends/imgui_impl_vulkan.h",
        "backends/imgui_impl_vulkan.cpp"
	}
    
    includedirs {
        "../glfw/include",
        "../imgui",
        "backends",
        "C:/VulkanSDK/1.3.216.0/Include"
	}
    
    links {
        "GLFW.lib",
        "vulkan-1.lib"
    }
    
    libdirs{
        "C:/VulkanSDK/1.3.216.0/Lib",
        "../glfw/bin/Debug-x86_64/GLFW"
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
