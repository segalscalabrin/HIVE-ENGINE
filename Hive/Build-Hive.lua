project "Hive"
   kind "SharedLib"
   language "C++"

   pchheader "Hivepch.h"
   pchsource "Hive/Source/Hivepch.cpp"
   
   files { 
      "Source/**.h", 
      "Source/**.cpp" 
   }

   includedirs {
      "Source",
      "Vendor/spdlog/include"
   }

   targetdir ("../Binaries/" .. OutputDir .. "/%{prj.name}")
   objdir ("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

   filter "system:linux"
      cppdialect "C++17"
      staticruntime "Off"
      defines { "__linux__" }
      buildoptions { "-fPIC" } 

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
