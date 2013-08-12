module UnrealScript.Engine.LightMapTexture2D;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;

extern(C++) interface LightMapTexture2D : Texture2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LightMapTexture2D")); }
}
