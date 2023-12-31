-- premake5.lua
workspace "smol"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "smolEditor"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "smolEngine"
    include "Dependencies.lua"
group ""

include "Core/Build-Core.lua"
include "App/Build-App.lua"
