module UnrealScript.UnrealEd.RenderTargetExporterTGA;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface RenderTargetExporterTGA : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.RenderTargetExporterTGA")); }
	private static __gshared RenderTargetExporterTGA mDefaultProperties;
	@property final static RenderTargetExporterTGA DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RenderTargetExporterTGA)("RenderTargetExporterTGA UnrealEd.Default__RenderTargetExporterTGA")); }
}
