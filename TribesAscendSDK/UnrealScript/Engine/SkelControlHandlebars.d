module UnrealScript.Engine.SkelControlHandlebars;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface SkelControlHandlebars : SkelControlSingleBone
{
	public @property final auto ref int SteerWheelBoneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
	public @property final bool bInvertRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
	public @property final bool bInvertRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	public @property final auto ref ScriptName WheelBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref UObject.EAxis HandlebarRotateAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 237); }
	public @property final auto ref UObject.EAxis WheelRollAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 236); }
}
