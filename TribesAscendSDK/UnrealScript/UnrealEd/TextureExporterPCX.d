module UnrealScript.UnrealEd.TextureExporterPCX;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface TextureExporterPCX : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TextureExporterPCX")); }
	private static __gshared TextureExporterPCX mDefaultProperties;
	@property final static TextureExporterPCX DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TextureExporterPCX)("TextureExporterPCX UnrealEd.Default__TextureExporterPCX")); }
}
