module UnrealScript.UnrealEd.RenderTargetCubeExporterTGA;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface RenderTargetCubeExporterTGA : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.RenderTargetCubeExporterTGA")); }
	private static __gshared RenderTargetCubeExporterTGA mDefaultProperties;
	@property final static RenderTargetCubeExporterTGA DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RenderTargetCubeExporterTGA)("RenderTargetCubeExporterTGA UnrealEd.Default__RenderTargetCubeExporterTGA")); }
	enum CubeFace : ubyte
	{
		CubeFace_MAX = 0,
	}
	// WARNING: Property 'CubeFace' has the same name as a defined type!
}
