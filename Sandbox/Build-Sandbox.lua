project "Sandbox"
   kind "ConsoleApp"
   language "C++"

   files { 
      "%{prj.name}/Source/**.h", 
      "%{prj.name}/Source/**.cpp" 
   }

   includedirs {
      "%{prj.name}/Source",
      "%{wks.name}/Hive/Source",
      "%{wks.name}/Hive/Vendor/spdlog/include"
   }

   links {
      "Hive"
   }

   targetdir ("../Binaries/" .. OutputDir .. "/%{prj.name}")
   objdir ("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

   filter "system:linux"
      cppdialect "C++17"
      staticruntime "Off"
      defines { "__linux__" }

   filter "configurations:Debug"
      defines "HIVE_DEBUG" 
      runtime "Debug"
      symbols "On"

   filter "configurations:Release"
      defines "HIVE_RELEASE"
      runtime "Release"
      optimize "On"

   filter "configurations:Dist"
      defines "HIVE_DIST"
      runtime "Release"
      optimize "On"