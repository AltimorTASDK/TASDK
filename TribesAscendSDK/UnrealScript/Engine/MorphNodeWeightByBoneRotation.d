module UnrealScript.Engine.MorphNodeWeightByBoneRotation;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphNodeWeightByBoneAngle;
import UnrealScript.Engine.MorphNodeWeightBase;

extern(C++) interface MorphNodeWeightByBoneRotation : MorphNodeWeightBase
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(MorphNodeWeightByBoneAngle.BoneAngleMorph) WeightArray() { return *cast(ScriptArray!(MorphNodeWeightByBoneAngle.BoneAngleMorph)*)(cast(size_t)cast(void*)this + 144); }
			// WARNING: Property 'MaterialInstanceConstant' has the same name as a defined type!
			ScriptName ScalarParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 160); }
			int MaterialSlotId() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			UObject.EAxis BoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 136); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 128); }
			float NodeWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float Angle() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
		}
		bool bControlMaterialParameter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
		bool bControlMaterialParameter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
		bool bInvertBoneAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool bInvertBoneAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	}
}
