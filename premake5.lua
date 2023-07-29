project "ImGUI"
	kind "StaticLib"
	language "C"
	staticruntime "off"

	targetdir ("Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("Intermediate/" .. outputdir .. "/%{prj.name}")

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
		"backends/imgui_impl_opengl3.h",
        	"backends/imgui_impl_opengl3.cpp"
	}
    
    includedirs {
        "../GLFW/include",
        "../ImGUI",
        "backends",
	}
    
    links {
        "GLFW.lib",
        "opengl32.lib"
    }
    
    libdirs {
        "../GLFW/Binaries/Debug/GLFW"
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "speed"

	filter "configurations:Dist"
		runtime "Release"
		optimize "full"
		symbols "off"
