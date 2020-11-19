project "HLSLcc"
    kind "StaticLib"
    language "C++"
	cppdialect "C++11"
    staticruntime "on"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	defines
	{
		"CXX_STANDARD_REQUIRED"
	}

    files
    {
        "src/ControlFlowGraph.cpp",
		"src/ControlFlowGraphUtils.cpp",
		"src/DataTypeAnalysis.cpp",
		"src/Declaration.cpp",
		"src/decode.cpp",
		"src/HLSLcc.cpp",
		"src/HLSLccToolkit.cpp",
		"src/HLSLCrossCompilerContext.cpp",
		"src/Instruction.cpp",
		"src/LoopTransform.cpp",
		"src/Operand.cpp",
		"src/reflect.cpp",
		"src/Shader.cpp",
		"src/ShaderInfo.cpp",
		"src/toGLSL.cpp",
		"src/toGLSLDeclaration.cpp",
		"src/toGLSLInstruction.cpp",
		"src/toGLSLOperand.cpp",
		"src/toMetal.cpp",
		"src/toMetalDeclaration.cpp",
		"src/toMetalInstruction.cpp",
		"src/toMetalOperand.cpp",
		"src/UseDefineChains.cpp",
		"src/cbstring/bsafe.c",
		--"src/cbstring/bsafe.h",
		"src/cbstring/bstraux.c",
		--"src/cbstring/bstraux.h",
		"src/cbstring/bstrlib.c",
		--"src/cbstring/bstrlib.h",
		--"include/growing_array.h",
		--"include/hlslcc.h",
		--"include/pstdint.h",
		--"include/ShaderInfo.h",
		--"include/UnityInstancingFlexibleArraySize.h"
    }

    includedirs
    {
        "include",
		".",
		"src/cbstring",
		"src/internal_includes"
    }
    
    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"