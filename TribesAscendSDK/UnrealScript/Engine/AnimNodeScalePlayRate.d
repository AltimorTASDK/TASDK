module UnrealScript.Engine.AnimNodeScalePlayRate;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeScalePlayRate : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeScalePlayRate")); }
	@property final auto ref float ScaleByValue() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
}
