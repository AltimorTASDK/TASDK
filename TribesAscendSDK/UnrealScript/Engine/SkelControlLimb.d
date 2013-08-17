module UnrealScript.Engine.SkelControlLimb;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlLimb : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkelControlLimb")()); }
	private static __gshared SkelControlLimb mDefaultProperties;
	@property final static SkelControlLimb DefaultProperties() { mixin(MGDPC!(SkelControlLimb, "SkelControlLimb Engine.Default__SkelControlLimb")()); }
	@property final
	{
		auto ref
		{
			ScriptName StretchRollBoneName() { mixin(MGPC!("ScriptName", 244)()); }
			UObject.Vector2D StretchLimits() { mixin(MGPC!("UObject.Vector2D", 236)()); }
			ScriptName JointTargetSpaceBoneName() { mixin(MGPC!("ScriptName", 224)()); }
			Vector JointTargetLocation() { mixin(MGPC!("Vector", 212)()); }
			ScriptName EffectorSpaceBoneName() { mixin(MGPC!("ScriptName", 204)()); }
			UObject.EAxis JointAxis() { mixin(MGPC!("UObject.EAxis", 203)()); }
			UObject.EAxis BoneAxis() { mixin(MGPC!("UObject.EAxis", 202)()); }
			SkelControlBase.EBoneControlSpace JointTargetLocationSpace() { mixin(MGPC!("SkelControlBase.EBoneControlSpace", 201)()); }
			SkelControlBase.EBoneControlSpace EffectorLocationSpace() { mixin(MGPC!("SkelControlBase.EBoneControlSpace", 200)()); }
			Vector EffectorLocation() { mixin(MGPC!("Vector", 188)()); }
		}
		bool bAllowStretching() { mixin(MGBPC!(232, 0x20)()); }
		bool bAllowStretching(bool val) { mixin(MSBPC!(232, 0x20)()); }
		bool bTakeRotationFromEffectorSpace() { mixin(MGBPC!(232, 0x10)()); }
		bool bTakeRotationFromEffectorSpace(bool val) { mixin(MSBPC!(232, 0x10)()); }
		bool bMaintainEffectorRelRot() { mixin(MGBPC!(232, 0x8)()); }
		bool bMaintainEffectorRelRot(bool val) { mixin(MSBPC!(232, 0x8)()); }
		bool bRotateJoint() { mixin(MGBPC!(232, 0x4)()); }
		bool bRotateJoint(bool val) { mixin(MSBPC!(232, 0x4)()); }
		bool bInvertJointAxis() { mixin(MGBPC!(232, 0x2)()); }
		bool bInvertJointAxis(bool val) { mixin(MSBPC!(232, 0x2)()); }
		bool bInvertBoneAxis() { mixin(MGBPC!(232, 0x1)()); }
		bool bInvertBoneAxis(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
}
