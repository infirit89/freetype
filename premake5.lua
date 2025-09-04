project "Freetype"
    kind "SharedLib"
    language "C"
    staticruntime "on"

    targetdir ("%{prj.location}/bin/" .. outputdir)
    objdir ("%{prj.location}/bin-int/" .. outputdir)

    includedirs 
    {
        "include"
    }

    files 
    {
        "freetype/src/autofit/autofit.c",
        "freetype/src/bdf/bdf.c",
        "freetype/src/cff/cff.c",
        "freetype/src/base/ftbase.c",
        "freetype/src/base/ftbitmap.c",
        "freetype/src/cache/ftcache.c",
        "freetype/src/base/ftfstype.c",
        "freetype/src/base/ftgasp.c",
        "freetype/src/base/ftglyph.c",
        "freetype/src/gzip/ftgzip.c",
        "freetype/src/base/ftinit.c",
        "freetype/src/lzw/ftlzw.c",
        "freetype/src/base/ftstroke.c",
        "freetype/src/base/ftsystem.c",
        "freetype/src/smooth/smooth.c",
        "freetype/src/base/ftbbox.c",
        "freetype/src/base/ftmm.c",
        "freetype/src/base/ftpfr.c",
        "freetype/src/base/ftsynth.c",
        "freetype/src/base/fttype1.c",
        "freetype/src/base/ftwinfnt.c",
        "freetype/src/base/ftlcdfil.c",
        "freetype/src/base/ftgxval.c",
        "freetype/src/base/ftotval.c",
        "freetype/src/base/ftpatent.c",
        "freetype/src/pcf/pcf.c",
        "freetype/src/pfr/pfr.c",
        "freetype/src/psaux/psaux.c",
        "freetype/src/pshinter/pshinter.c",
        "freetype/src/psnames/psmodule.c",
        "freetype/src/raster/raster.c",
        "freetype/src/sfnt/sfnt.c",
        "freetype/src/truetype/truetype.c",
        "freetype/src/type1/type1.c",
        "freetype/src/cid/type1cid.c",
        "freetype/src/type42/type42.c",
        "freetype/src/winfonts/winfnt.c", 
    }

    defines 
    {
        "WIN32",
        "WIN32_LEAN_AND_MEAN",
        "VC_EXTRALEAN",
        "_CRT_SECURE_NO_WARNINGS",
        "FT2_BUILD_LIBRARY",    
    }

    filter "system:windows"
        systemversion "latest"

        files 
        {
            "builds/windows/ftdebug.c"
        }


    filter "configurations:Debug"
        defines 
        {
            "FT_DEBUG_LEVEL_ERROR",
            "FT_DEBUG_LEVEL_TRACE"
        }
        
        runtime "Debug"
        symbols "on"
      
      configuration "configurations:Release"
        defines
        {
            "NDEBUG"
        }
        
        runtime "Release"
        optimize "on"




    
