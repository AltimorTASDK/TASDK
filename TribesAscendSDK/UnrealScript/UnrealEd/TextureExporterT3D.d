module UnrealScript.UnrealEd.TextureExporterT3D;

import ScriptClasses;
import UnrealScript.UnrealEd.ExporterT3DX;

extern(C++) interface TextureExporterT3D : ExporterT3DX
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TextureExporterT3D")); }
}
