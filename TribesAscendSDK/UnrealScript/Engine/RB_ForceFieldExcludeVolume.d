module UnrealScript.Engine.RB_ForceFieldExcludeVolume;

import ScriptClasses;
import UnrealScript.Engine.Volume;

extern(C++) interface RB_ForceFieldExcludeVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_ForceFieldExcludeVolume")); }
	@property final auto ref int ForceFieldChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 520); }
}
