module UnrealScript.Engine.MorphNodeWeightByBoneAngle;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphNodeWeightBase;

extern(C++) interface MorphNodeWeightByBoneAngle : MorphNodeWeightBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MorphNodeWeightByBoneAngle")); }
	struct BoneAngleMorph
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MorphNodeWeightByBoneAngle.BoneAngleMorph")); }
		@property final auto ref
		{
			float TargetWeight() { return *cast(float*)(cast(size_t)&this + 4); }
			float Angle() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MorphNodeWeightByBoneAngle.BoneAngleMorph) WeightArray() { return *cast(ScriptArray!(MorphNodeWeightByBoneAngle.BoneAngleMorph)*)(cast(size_t)cast(void*)this + 168); }
			// WARNING: Property 'MaterialInstanceConstant' has the same name as a defined type!
			ScriptName ScalarParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 156); }
			int MaterialSlotId() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
			ScriptName AngleBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 144); }
			UObject.EAxis AngleBoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 137); }
			UObject.EAxis BaseBoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 136); }
			ScriptName BaseBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 128); }
			float NodeWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float Angle() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
		}
		bool bControlMaterialParameter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x4) != 0; }
		bool bControlMaterialParameter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x4; } return val; }
		bool bInvertAngleBoneAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
		bool bInvertAngleBoneAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
		bool bInvertBaseBoneAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool bInvertBaseBoneAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	}
}
