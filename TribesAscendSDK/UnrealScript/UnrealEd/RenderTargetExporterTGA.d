module UnrealScript.UnrealEd.RenderTargetExporterTGA;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface RenderTargetExporterTGA : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.RenderTargetExporterTGA")); }
	private static __gshared RenderTargetExporterTGA mDefaultProperties;
	@property final static RenderTargetExporterTGA DefaultProperties() { mixin(MGDPC("RenderTargetExporterTGA", "RenderTargetExporterTGA UnrealEd.Default__RenderTargetExporterTGA")); }
}
