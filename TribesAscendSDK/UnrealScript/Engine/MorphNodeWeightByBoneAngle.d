module UnrealScript.Engine.MorphNodeWeightByBoneAngle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphNodeWeightBase;

extern(C++) interface MorphNodeWeightByBoneAngle : MorphNodeWeightBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MorphNodeWeightByBoneAngle")); }
	private static __gshared MorphNodeWeightByBoneAngle mDefaultProperties;
	@property final static MorphNodeWeightByBoneAngle DefaultProperties() { mixin(MGDPC("MorphNodeWeightByBoneAngle", "MorphNodeWeightByBoneAngle Engine.Default__MorphNodeWeightByBoneAngle")); }
	struct BoneAngleMorph
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.MorphNodeWeightByBoneAngle.BoneAngleMorph")); }
		@property final auto ref
		{
			float TargetWeight() { mixin(MGPS("float", 4)); }
			float Angle() { mixin(MGPS("float", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MorphNodeWeightByBoneAngle.BoneAngleMorph) WeightArray() { mixin(MGPC("ScriptArray!(MorphNodeWeightByBoneAngle.BoneAngleMorph)", 168)); }
			MaterialInstanceConstant MaterialInstanceConstantVar() { mixin(MGPC("MaterialInstanceConstant", 164)); }
			ScriptName ScalarParameterName() { mixin(MGPC("ScriptName", 156)); }
			int MaterialSlotId() { mixin(MGPC("int", 152)); }
			ScriptName AngleBoneName() { mixin(MGPC("ScriptName", 144)); }
			UObject.EAxis AngleBoneAxis() { mixin(MGPC("UObject.EAxis", 137)); }
			UObject.EAxis BaseBoneAxis() { mixin(MGPC("UObject.EAxis", 136)); }
			ScriptName BaseBoneName() { mixin(MGPC("ScriptName", 128)); }
			float NodeWeight() { mixin(MGPC("float", 124)); }
			float Angle() { mixin(MGPC("float", 120)); }
		}
		bool bControlMaterialParameter() { mixin(MGBPC(140, 0x4)); }
		bool bControlMaterialParameter(bool val) { mixin(MSBPC(140, 0x4)); }
		bool bInvertAngleBoneAxis() { mixin(MGBPC(140, 0x2)); }
		bool bInvertAngleBoneAxis(bool val) { mixin(MSBPC(140, 0x2)); }
		bool bInvertBaseBoneAxis() { mixin(MGBPC(140, 0x1)); }
		bool bInvertBaseBoneAxis(bool val) { mixin(MSBPC(140, 0x1)); }
	}
}
