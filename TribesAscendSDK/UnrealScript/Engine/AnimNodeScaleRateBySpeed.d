module UnrealScript.Engine.AnimNodeScaleRateBySpeed;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeScalePlayRate;

extern(C++) interface AnimNodeScaleRateBySpeed : AnimNodeScalePlayRate
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeScaleRateBySpeed")); }
	private static __gshared AnimNodeScaleRateBySpeed mDefaultProperties;
	@property final static AnimNodeScaleRateBySpeed DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNodeScaleRateBySpeed)("AnimNodeScaleRateBySpeed Engine.Default__AnimNodeScaleRateBySpeed")); }
	@property final auto ref float BaseSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
}
