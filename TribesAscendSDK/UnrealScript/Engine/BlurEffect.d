module UnrealScript.Engine.BlurEffect;

import ScriptClasses;
import UnrealScript.Engine.PostProcessEffect;

extern(C++) interface BlurEffect : PostProcessEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.BlurEffect")); }
	@property final auto ref int BlurKernelSize() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
}
