project "imgui"
    language        "C++"
    kind            "StaticLib"
    --characterset    "MBCS"
    cppdialect      "c++17"
    systemversion   "10.0.19041.0"

    defines {
        "_LIB"
    }

    files {
        "*.cpp",
        "*.h",
        "*.inl",
        "*.lua",
        "backends/imgui_impl_dx9.cpp",
        "backends/imgui_impl_dx9.h",
        "backends/imgui_impl_win32.cpp",
        "backends/imgui_impl_win32.h",
    }

    includedirs {
        ".",
    }
