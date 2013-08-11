module UnrealScript.Engine.MorphNodeWeightByBoneRotation;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphNodeWeightByBoneAngle;
import UnrealScript.Engine.MorphNodeWeightBase;

extern(C++) interface MorphNodeWeightByBoneRotation : MorphNodeWeightBase
{
	public @property final auto ref ScriptArray!(MorphNodeWeightByBoneAngle.BoneAngleMorph) WeightArray() { return *cast(ScriptArray!(MorphNodeWeightByBoneAngle.BoneAngleMorph)*)(cast(size_t)cast(void*)this + 144); }
	// WARNING: Property 'MaterialInstanceConstant' has the same name as a defined type!
	public @property final auto ref ScriptName ScalarParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref int MaterialSlotId() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final bool bControlMaterialParameter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
	public @property final bool bControlMaterialParameter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
	public @property final bool bInvertBoneAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool bInvertBoneAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	public @property final auto ref UObject.EAxis BoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float NodeWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float Angle() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
}
