module UnrealScript.Engine.RB_ForceFieldExcludeVolume;

import ScriptClasses;
import UnrealScript.Engine.Volume;

extern(C++) interface RB_ForceFieldExcludeVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_ForceFieldExcludeVolume")); }
	private static __gshared RB_ForceFieldExcludeVolume mDefaultProperties;
	@property final static RB_ForceFieldExcludeVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RB_ForceFieldExcludeVolume)("RB_ForceFieldExcludeVolume Engine.Default__RB_ForceFieldExcludeVolume")); }
	@property final auto ref int ForceFieldChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 520); }
}
