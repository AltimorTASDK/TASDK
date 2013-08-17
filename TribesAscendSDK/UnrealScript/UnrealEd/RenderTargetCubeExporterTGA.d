module UnrealScript.UnrealEd.RenderTargetCubeExporterTGA;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface RenderTargetCubeExporterTGA : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.RenderTargetCubeExporterTGA")()); }
	private static __gshared RenderTargetCubeExporterTGA mDefaultProperties;
	@property final static RenderTargetCubeExporterTGA DefaultProperties() { mixin(MGDPC!(RenderTargetCubeExporterTGA, "RenderTargetCubeExporterTGA UnrealEd.Default__RenderTargetCubeExporterTGA")()); }
	enum CubeFace : ubyte
	{
		CubeFace_MAX = 0,
	}
	// WARNING: Property 'CubeFace' has the same name as a defined type!
}
