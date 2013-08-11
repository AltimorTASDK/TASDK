module UnrealScript.Engine.RB_ForceFieldExcludeVolume;

import UnrealScript.Engine.Volume;

extern(C++) interface RB_ForceFieldExcludeVolume : Volume
{
public extern(D):
	@property final auto ref int ForceFieldChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 520); }
}
