-- premake5.lua
workspace "HIVE-ENGINE"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Sandbox"

   -- Options de compilation spécifiques à Linux
   filter "system:linux"
   buildoptions { "-Wall", "-std=c++17" }  -- Active tous les avertissements et utilise C++17
   --links { "GL", "GLEW", "glfw" }  -- Lien avec les bibliothèques externes comme OpenGL

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Core"
	include "Hive/Build-Hive.lua"
group ""

include "Sandbox/Build-Sandbox.lua"