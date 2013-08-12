module UnrealScript.Engine.AnimNotify_CameraEffect;

import ScriptClasses;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_CameraEffect : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify_CameraEffect")); }
	@property final auto ref ScriptClass CameraLensEffect() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 64); }
}
