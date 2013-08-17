module UnrealScript.Engine.SkelControl_CCD_IK;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControl_CCD_IK : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkelControl_CCD_IK")()); }
	private static __gshared SkelControl_CCD_IK mDefaultProperties;
	@property final static SkelControl_CCD_IK DefaultProperties() { mixin(MGDPC!(SkelControl_CCD_IK, "SkelControl_CCD_IK Engine.Default__SkelControl_CCD_IK")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(float) AngleConstraint() { mixin(MGPC!("ScriptArray!(float)", 244)()); }
			float MaxAngleSteps() { mixin(MGPC!("float", 256)()); }
			float Precision() { mixin(MGPC!("float", 236)()); }
			int IterationsCount() { mixin(MGPC!("int", 232)()); }
			int MaxPerBoneIterations() { mixin(MGPC!("int", 228)()); }
			int NumBones() { mixin(MGPC!("int", 224)()); }
			Vector EffectorTranslationFromBone() { mixin(MGPC!("Vector", 212)()); }
			ScriptName EffectorSpaceBoneName() { mixin(MGPC!("ScriptName", 204)()); }
			SkelControlBase.EBoneControlSpace EffectorLocationSpace() { mixin(MGPC!("SkelControlBase.EBoneControlSpace", 200)()); }
			Vector EffectorLocation() { mixin(MGPC!("Vector", 188)()); }
		}
		bool bNoTurnOptimization() { mixin(MGBPC!(240, 0x2)()); }
		bool bNoTurnOptimization(bool val) { mixin(MSBPC!(240, 0x2)()); }
		bool bStartFromTail() { mixin(MGBPC!(240, 0x1)()); }
		bool bStartFromTail(bool val) { mixin(MSBPC!(240, 0x1)()); }
	}
}
