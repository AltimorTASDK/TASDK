module UnrealScript.Engine.AnimNodeScaleRateBySpeed;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeScalePlayRate;

extern(C++) interface AnimNodeScaleRateBySpeed : AnimNodeScalePlayRate
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeScaleRateBySpeed")); }
	@property final auto ref float BaseSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
}
