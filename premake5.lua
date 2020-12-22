project "ImGui"
	kind "StaticLib"
	language "C++"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.cpp",
		"imstb_textedit.cpp",
		"imstb_truetype.cpp",
		"imgui_demo.cpp"
	}
	
	filter "system:windows"
		systemversion "latest"
		staticruntime "On"
	
	filter { "system:windows", "configurations:Release" }
		buildoptions "/MT"