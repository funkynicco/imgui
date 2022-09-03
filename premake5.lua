workspace "imgui"
    targetdir   "build/%{cfg.action}/bin/%{prj.name}/%{cfg.platform}/%{cfg.buildcfg}"
    objdir      "!build/%{cfg.action}/obj/%{prj.name}/%{cfg.platform}/%{cfg.buildcfg}"

    platforms {
        "x64",
    }

    
    filter "platforms:x64"
        architecture "x64"
        defines {
		}
    
    filter {}

    configurations {
        "Debug",
        "Release",
    }
    
    flags {
        "MultiProcessorCompile"
    }

    filter "configurations:Debug"
        symbols "on"

        defines {
            "_DEBUG",
            "_CRT_SECURE_NO_WARNINGS"
        }
    
    filter "configurations:Release"
        optimize        "on"
        staticruntime   "on"

        defines {
            "NDEBUG"
        }
    
        flags {
            "NoIncrementalLink",
            "LinkTimeOptimization",
        }
    
    filter {}

    include "premake5.project.lua"
