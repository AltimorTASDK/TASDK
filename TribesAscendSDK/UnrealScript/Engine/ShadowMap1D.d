module UnrealScript.Engine.ShadowMap1D;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ShadowMap1D : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ShadowMap1D")); }
}
