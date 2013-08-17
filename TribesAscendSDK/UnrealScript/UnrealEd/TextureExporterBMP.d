module UnrealScript.UnrealEd.TextureExporterBMP;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface TextureExporterBMP : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.TextureExporterBMP")); }
	private static __gshared TextureExporterBMP mDefaultProperties;
	@property final static TextureExporterBMP DefaultProperties() { mixin(MGDPC("TextureExporterBMP", "TextureExporterBMP UnrealEd.Default__TextureExporterBMP")); }
}
