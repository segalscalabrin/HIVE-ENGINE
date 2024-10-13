project "Hive"
   kind "StaticLib"
   language "C++"
   cppdialect "C++20"
   staticruntime "off"
   
   files { 
      "Source/**.h", 
      "Source/**.cpp" 
   }

   includedirs {
      "Source",
      --"../Vendor/GLEW/include",
      --"../Vendor/GLFW/include",
      --"../Vendor/OpenGL/include"
   }

   targetdir ("../Binaries/" .. OutputDir .. "/%{prj.name}")
   objdir ("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

   filter "system:linux"
      defines { "HIVE_PLATFORM_LINUX" }
      buildoptions { "-fPIC" }  -- Position Independent Code

   filter "configurations:Debug"
      defines { "DEBUG" }
      runtime "Debug"
      symbols "On"

   filter "configurations:Release"
      defines { "RELEASE" }
      runtime "Release"
      optimize "On"

   filter "configurations:Dist"
      defines { "DIST" }
      runtime "Release"
      optimize "On"
