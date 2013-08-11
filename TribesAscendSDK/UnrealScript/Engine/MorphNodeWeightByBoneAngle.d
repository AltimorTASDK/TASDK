module UnrealScript.Engine.MorphNodeWeightByBoneAngle;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphNodeWeightBase;

extern(C++) interface MorphNodeWeightByBoneAngle : MorphNodeWeightBase
{
	struct BoneAngleMorph
	{
		public @property final auto ref float TargetWeight() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __TargetWeight[4];
		public @property final auto ref float Angle() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Angle[4];
	}
	public @property final auto ref ScriptArray!(MorphNodeWeightByBoneAngle.BoneAngleMorph) WeightArray() { return *cast(ScriptArray!(MorphNodeWeightByBoneAngle.BoneAngleMorph)*)(cast(size_t)cast(void*)this + 168); }
	// WARNING: Property 'MaterialInstanceConstant' has the same name as a defined type!
	public @property final auto ref ScriptName ScalarParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref int MaterialSlotId() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptName AngleBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 144); }
	public @property final bool bControlMaterialParameter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x4) != 0; }
	public @property final bool bControlMaterialParameter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x4; } return val; }
	public @property final bool bInvertAngleBoneAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
	public @property final bool bInvertAngleBoneAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
	public @property final bool bInvertBaseBoneAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool bInvertBaseBoneAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	public @property final auto ref UObject.EAxis AngleBoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 137); }
	public @property final auto ref UObject.EAxis BaseBoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptName BaseBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float NodeWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float Angle() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
}
