module UnrealScript.UnrealEd.TextureExporterPCX;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface TextureExporterPCX : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.TextureExporterPCX")); }
	private static __gshared TextureExporterPCX mDefaultProperties;
	@property final static TextureExporterPCX DefaultProperties() { mixin(MGDPC("TextureExporterPCX", "TextureExporterPCX UnrealEd.Default__TextureExporterPCX")); }
}
