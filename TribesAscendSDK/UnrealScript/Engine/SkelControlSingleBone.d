module UnrealScript.Engine.SkelControlSingleBone;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlSingleBone : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkelControlSingleBone")()); }
	private static __gshared SkelControlSingleBone mDefaultProperties;
	@property final static SkelControlSingleBone DefaultProperties() { mixin(MGDPC!(SkelControlSingleBone, "SkelControlSingleBone Engine.Default__SkelControlSingleBone")()); }
	@property final
	{
		auto ref
		{
			ScriptName RotationSpaceBoneName() { mixin(MGPC!(ScriptName, 228)()); }
			Rotator BoneRotation() { mixin(MGPC!(Rotator, 216)()); }
			ScriptName TranslationSpaceBoneName() { mixin(MGPC!(ScriptName, 208)()); }
			SkelControlBase.EBoneControlSpace BoneRotationSpace() { mixin(MGPC!(SkelControlBase.EBoneControlSpace, 205)()); }
			SkelControlBase.EBoneControlSpace BoneTranslationSpace() { mixin(MGPC!(SkelControlBase.EBoneControlSpace, 204)()); }
			Vector BoneTranslation() { mixin(MGPC!(Vector, 192)()); }
		}
		bool bRemoveMeshRotation() { mixin(MGBPC!(188, 0x10)()); }
		bool bRemoveMeshRotation(bool val) { mixin(MSBPC!(188, 0x10)()); }
		bool bAddRotation() { mixin(MGBPC!(188, 0x8)()); }
		bool bAddRotation(bool val) { mixin(MSBPC!(188, 0x8)()); }
		bool bAddTranslation() { mixin(MGBPC!(188, 0x4)()); }
		bool bAddTranslation(bool val) { mixin(MSBPC!(188, 0x4)()); }
		bool bApplyRotation() { mixin(MGBPC!(188, 0x2)()); }
		bool bApplyRotation(bool val) { mixin(MSBPC!(188, 0x2)()); }
		bool bApplyTranslation() { mixin(MGBPC!(188, 0x1)()); }
		bool bApplyTranslation(bool val) { mixin(MSBPC!(188, 0x1)()); }
	}
}
