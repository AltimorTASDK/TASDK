module UnrealScript.Engine.MorphNodeWeightByBoneRotation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphNodeWeightByBoneAngle;
import UnrealScript.Engine.MorphNodeWeightBase;

extern(C++) interface MorphNodeWeightByBoneRotation : MorphNodeWeightBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MorphNodeWeightByBoneRotation")()); }
	private static __gshared MorphNodeWeightByBoneRotation mDefaultProperties;
	@property final static MorphNodeWeightByBoneRotation DefaultProperties() { mixin(MGDPC!(MorphNodeWeightByBoneRotation, "MorphNodeWeightByBoneRotation Engine.Default__MorphNodeWeightByBoneRotation")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(MorphNodeWeightByBoneAngle.BoneAngleMorph) WeightArray() { mixin(MGPC!(ScriptArray!(MorphNodeWeightByBoneAngle.BoneAngleMorph), 144)()); }
			// WARNING: Property 'MaterialInstanceConstant' has the same name as a defined type!
			ScriptName ScalarParameterName() { mixin(MGPC!(ScriptName, 160)()); }
			int MaterialSlotId() { mixin(MGPC!(int, 156)()); }
			UObject.EAxis BoneAxis() { mixin(MGPC!(UObject.EAxis, 136)()); }
			ScriptName BoneName() { mixin(MGPC!(ScriptName, 128)()); }
			float NodeWeight() { mixin(MGPC!(float, 124)()); }
			float Angle() { mixin(MGPC!(float, 120)()); }
		}
		bool bControlMaterialParameter() { mixin(MGBPC!(140, 0x2)()); }
		bool bControlMaterialParameter(bool val) { mixin(MSBPC!(140, 0x2)()); }
		bool bInvertBoneAxis() { mixin(MGBPC!(140, 0x1)()); }
		bool bInvertBoneAxis(bool val) { mixin(MSBPC!(140, 0x1)()); }
	}
}
