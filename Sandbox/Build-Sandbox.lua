project "Sandbox"
   kind "ConsoleApp"
   language "C++"
   cppdialect "C++20"
   staticruntime "off"

   files { "Source/**.h", "Source/**.cpp" }

   includedirs {
      "Source",
      "../Hive/Source",
      --"../Vendor/GLEW/include",
      --"../Vendor/GLFW/include",
      --"../Vendor/OpenGL/include"
   }

   links {
      "Hive",  -- Liens avec le projet Hive
      --"../Vendor/GLEW/lib/glew32s",  -- Bibliothèques locales
      --"../Vendor/GLFW/lib/glfw3",
      --"GL"  -- OpenGL est généralement lié depuis le système
   }

   targetdir ("../Binaries/" .. OutputDir .. "/%{prj.name}")
   objdir ("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

   filter "system:linux"
      defines { "HIVE_PLATFORM_LINUX" }
      links { "pthread", "dl" }

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
