module UnrealScript.UnrealEd.TextureExporterT3D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ExporterT3DX;

extern(C++) interface TextureExporterT3D : ExporterT3DX
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.TextureExporterT3D")); }
	private static __gshared TextureExporterT3D mDefaultProperties;
	@property final static TextureExporterT3D DefaultProperties() { mixin(MGDPC("TextureExporterT3D", "TextureExporterT3D UnrealEd.Default__TextureExporterT3D")); }
}
