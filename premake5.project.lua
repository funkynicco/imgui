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
        "*.lua"
    }

    includedirs {
        ".",
    }
