module UnrealScript.Engine.SkeletalMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlBase;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.MorphTargetSet;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphTarget;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.AnimSequence;
import UnrealScript.Engine.PhysicsAssetInstance;
import UnrealScript.Engine.AnimTree;
import UnrealScript.Engine.SkeletalMeshSocket;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MeshComponent;
import UnrealScript.Engine.AnimNode;
import UnrealScript.Engine.RB_BodyInstance;
import UnrealScript.Engine.MorphNodeBase;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNotify_ForceField;
import UnrealScript.Engine.AnimNotify_PlayParticleEffect;

extern(C++) interface SkeletalMeshComponent : MeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkeletalMeshComponent")()); }
	private static __gshared SkeletalMeshComponent mDefaultProperties;
	@property final static SkeletalMeshComponent DefaultProperties() { mixin(MGDPC!(SkeletalMeshComponent, "SkeletalMeshComponent Engine.Default__SkeletalMeshComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAttachComponent;
			ScriptFunction mDetachComponent;
			ScriptFunction mAttachComponentToSocket;
			ScriptFunction mGetSocketWorldLocationAndRotation;
			ScriptFunction mGetSocketByName;
			ScriptFunction mGetSocketBoneName;
			ScriptFunction mFindComponentAttachedToBone;
			ScriptFunction mIsComponentAttached;
			ScriptFunction mAttachedComponents;
			ScriptFunction mGetTransformMatrix;
			ScriptFunction mSetSkeletalMesh;
			ScriptFunction mSetPhysicsAsset;
			ScriptFunction mSetForceRefPose;
			ScriptFunction mSetEnableClothSimulation;
			ScriptFunction mSetClothFrozen;
			ScriptFunction mSetEnableClothingSimulation;
			ScriptFunction mUpdateClothParams;
			ScriptFunction mSetClothExternalForce;
			ScriptFunction mSetAttachClothVertsToBaseBody;
			ScriptFunction mResetClothVertsToRefPose;
			ScriptFunction mGetClothAttachmentResponseCoefficient;
			ScriptFunction mGetClothAttachmentTearFactor;
			ScriptFunction mGetClothBendingStiffness;
			ScriptFunction mGetClothCollisionResponseCoefficient;
			ScriptFunction mGetClothDampingCoefficient;
			ScriptFunction mGetClothFlags;
			ScriptFunction mGetClothFriction;
			ScriptFunction mGetClothPressure;
			ScriptFunction mGetClothSleepLinearVelocity;
			ScriptFunction mGetClothSolverIterations;
			ScriptFunction mGetClothStretchingStiffness;
			ScriptFunction mGetClothTearFactor;
			ScriptFunction mGetClothThickness;
			ScriptFunction mSetClothAttachmentResponseCoefficient;
			ScriptFunction mSetClothAttachmentTearFactor;
			ScriptFunction mSetClothBendingStiffness;
			ScriptFunction mSetClothCollisionResponseCoefficient;
			ScriptFunction mSetClothDampingCoefficient;
			ScriptFunction mSetClothFlags;
			ScriptFunction mSetClothFriction;
			ScriptFunction mSetClothPressure;
			ScriptFunction mSetClothSleepLinearVelocity;
			ScriptFunction mSetClothSolverIterations;
			ScriptFunction mSetClothStretchingStiffness;
			ScriptFunction mSetClothTearFactor;
			ScriptFunction mSetClothThickness;
			ScriptFunction mSetClothSleep;
			ScriptFunction mSetClothPosition;
			ScriptFunction mSetClothVelocity;
			ScriptFunction mAttachClothToCollidingShapes;
			ScriptFunction mEnableClothValidBounds;
			ScriptFunction mSetClothValidBounds;
			ScriptFunction mUpdateSoftBodyParams;
			ScriptFunction mSetSoftBodyFrozen;
			ScriptFunction mWakeSoftBody;
			ScriptFunction mFindAnimSequence;
			ScriptFunction mSaveAnimSets;
			ScriptFunction mRestoreSavedAnimSets;
			ScriptFunction mGetAnimRateByDuration;
			ScriptFunction mGetAnimLength;
			ScriptFunction mFindMorphTarget;
			ScriptFunction mFindAnimNode;
			ScriptFunction mAllAnimNodes;
			ScriptFunction mFindSkelControl;
			ScriptFunction mFindMorphNode;
			ScriptFunction mGetBoneQuaternion;
			ScriptFunction mGetBoneLocation;
			ScriptFunction mMatchRefBone;
			ScriptFunction mGetBoneName;
			ScriptFunction mGetBoneMatrix;
			ScriptFunction mGetParentBone;
			ScriptFunction mGetBoneNames;
			ScriptFunction mBoneIsChildOf;
			ScriptFunction mGetRefPosePosition;
			ScriptFunction mGetBoneAxis;
			ScriptFunction mTransformToBoneSpace;
			ScriptFunction mTransformFromBoneSpace;
			ScriptFunction mFindClosestBone;
			ScriptFunction mGetClosestCollidingBoneLocation;
			ScriptFunction mSetAnimTreeTemplate;
			ScriptFunction mSetParentAnimComponent;
			ScriptFunction mUpdateParentBoneMap;
			ScriptFunction mInitSkelControls;
			ScriptFunction mInitMorphTargets;
			ScriptFunction mFindConstraintIndex;
			ScriptFunction mFindConstraintBoneName;
			ScriptFunction mFindBodyInstanceNamed;
			ScriptFunction mSetHasPhysicsAssetInstance;
			ScriptFunction mUpdateRBBonesFromSpaceBases;
			ScriptFunction mForceSkelUpdate;
			ScriptFunction mUpdateAnimations;
			ScriptFunction mGetBonesWithinRadius;
			ScriptFunction mAddInstanceVertexWeightBoneParented;
			ScriptFunction mRemoveInstanceVertexWeightBoneParented;
			ScriptFunction mFindInstanceVertexweightBonePair;
			ScriptFunction mUpdateInstanceVertexWeightBones;
			ScriptFunction mToggleInstanceVertexWeights;
			ScriptFunction mPlayFaceFXAnim;
			ScriptFunction mStopFaceFXAnim;
			ScriptFunction mIsPlayingFaceFXAnim;
			ScriptFunction mDeclareFaceFXRegister;
			ScriptFunction mGetFaceFXRegister;
			ScriptFunction mSetFaceFXRegister;
			ScriptFunction mSetFaceFXRegisterEx;
			ScriptFunction mHideBone;
			ScriptFunction mUnHideBone;
			ScriptFunction mIsBoneHidden;
			ScriptFunction mHideBoneByName;
			ScriptFunction mUnHideBoneByName;
			ScriptFunction mUpdateMeshForBrokenConstraints;
			ScriptFunction mShowMaterialSection;
			ScriptFunction mPlayAnim;
			ScriptFunction mStopAnim;
			ScriptFunction mCreateForceField;
			ScriptFunction mPlayParticleEffect;
			ScriptFunction mSkelMeshCompOnParticleSystemFinished;
			ScriptFunction mBreakConstraint;
		}
		public @property static final
		{
			ScriptFunction AttachComponent() { mixin(MGF!("mAttachComponent", "Function Engine.SkeletalMeshComponent.AttachComponent")()); }
			ScriptFunction DetachComponent() { mixin(MGF!("mDetachComponent", "Function Engine.SkeletalMeshComponent.DetachComponent")()); }
			ScriptFunction AttachComponentToSocket() { mixin(MGF!("mAttachComponentToSocket", "Function Engine.SkeletalMeshComponent.AttachComponentToSocket")()); }
			ScriptFunction GetSocketWorldLocationAndRotation() { mixin(MGF!("mGetSocketWorldLocationAndRotation", "Function Engine.SkeletalMeshComponent.GetSocketWorldLocationAndRotation")()); }
			ScriptFunction GetSocketByName() { mixin(MGF!("mGetSocketByName", "Function Engine.SkeletalMeshComponent.GetSocketByName")()); }
			ScriptFunction GetSocketBoneName() { mixin(MGF!("mGetSocketBoneName", "Function Engine.SkeletalMeshComponent.GetSocketBoneName")()); }
			ScriptFunction FindComponentAttachedToBone() { mixin(MGF!("mFindComponentAttachedToBone", "Function Engine.SkeletalMeshComponent.FindComponentAttachedToBone")()); }
			ScriptFunction IsComponentAttached() { mixin(MGF!("mIsComponentAttached", "Function Engine.SkeletalMeshComponent.IsComponentAttached")()); }
			ScriptFunction AttachedComponents() { mixin(MGF!("mAttachedComponents", "Function Engine.SkeletalMeshComponent.AttachedComponents")()); }
			ScriptFunction GetTransformMatrix() { mixin(MGF!("mGetTransformMatrix", "Function Engine.SkeletalMeshComponent.GetTransformMatrix")()); }
			ScriptFunction SetSkeletalMesh() { mixin(MGF!("mSetSkeletalMesh", "Function Engine.SkeletalMeshComponent.SetSkeletalMesh")()); }
			ScriptFunction SetPhysicsAsset() { mixin(MGF!("mSetPhysicsAsset", "Function Engine.SkeletalMeshComponent.SetPhysicsAsset")()); }
			ScriptFunction SetForceRefPose() { mixin(MGF!("mSetForceRefPose", "Function Engine.SkeletalMeshComponent.SetForceRefPose")()); }
			ScriptFunction SetEnableClothSimulation() { mixin(MGF!("mSetEnableClothSimulation", "Function Engine.SkeletalMeshComponent.SetEnableClothSimulation")()); }
			ScriptFunction SetClothFrozen() { mixin(MGF!("mSetClothFrozen", "Function Engine.SkeletalMeshComponent.SetClothFrozen")()); }
			ScriptFunction SetEnableClothingSimulation() { mixin(MGF!("mSetEnableClothingSimulation", "Function Engine.SkeletalMeshComponent.SetEnableClothingSimulation")()); }
			ScriptFunction UpdateClothParams() { mixin(MGF!("mUpdateClothParams", "Function Engine.SkeletalMeshComponent.UpdateClothParams")()); }
			ScriptFunction SetClothExternalForce() { mixin(MGF!("mSetClothExternalForce", "Function Engine.SkeletalMeshComponent.SetClothExternalForce")()); }
			ScriptFunction SetAttachClothVertsToBaseBody() { mixin(MGF!("mSetAttachClothVertsToBaseBody", "Function Engine.SkeletalMeshComponent.SetAttachClothVertsToBaseBody")()); }
			ScriptFunction ResetClothVertsToRefPose() { mixin(MGF!("mResetClothVertsToRefPose", "Function Engine.SkeletalMeshComponent.ResetClothVertsToRefPose")()); }
			ScriptFunction GetClothAttachmentResponseCoefficient() { mixin(MGF!("mGetClothAttachmentResponseCoefficient", "Function Engine.SkeletalMeshComponent.GetClothAttachmentResponseCoefficient")()); }
			ScriptFunction GetClothAttachmentTearFactor() { mixin(MGF!("mGetClothAttachmentTearFactor", "Function Engine.SkeletalMeshComponent.GetClothAttachmentTearFactor")()); }
			ScriptFunction GetClothBendingStiffness() { mixin(MGF!("mGetClothBendingStiffness", "Function Engine.SkeletalMeshComponent.GetClothBendingStiffness")()); }
			ScriptFunction GetClothCollisionResponseCoefficient() { mixin(MGF!("mGetClothCollisionResponseCoefficient", "Function Engine.SkeletalMeshComponent.GetClothCollisionResponseCoefficient")()); }
			ScriptFunction GetClothDampingCoefficient() { mixin(MGF!("mGetClothDampingCoefficient", "Function Engine.SkeletalMeshComponent.GetClothDampingCoefficient")()); }
			ScriptFunction GetClothFlags() { mixin(MGF!("mGetClothFlags", "Function Engine.SkeletalMeshComponent.GetClothFlags")()); }
			ScriptFunction GetClothFriction() { mixin(MGF!("mGetClothFriction", "Function Engine.SkeletalMeshComponent.GetClothFriction")()); }
			ScriptFunction GetClothPressure() { mixin(MGF!("mGetClothPressure", "Function Engine.SkeletalMeshComponent.GetClothPressure")()); }
			ScriptFunction GetClothSleepLinearVelocity() { mixin(MGF!("mGetClothSleepLinearVelocity", "Function Engine.SkeletalMeshComponent.GetClothSleepLinearVelocity")()); }
			ScriptFunction GetClothSolverIterations() { mixin(MGF!("mGetClothSolverIterations", "Function Engine.SkeletalMeshComponent.GetClothSolverIterations")()); }
			ScriptFunction GetClothStretchingStiffness() { mixin(MGF!("mGetClothStretchingStiffness", "Function Engine.SkeletalMeshComponent.GetClothStretchingStiffness")()); }
			ScriptFunction GetClothTearFactor() { mixin(MGF!("mGetClothTearFactor", "Function Engine.SkeletalMeshComponent.GetClothTearFactor")()); }
			ScriptFunction GetClothThickness() { mixin(MGF!("mGetClothThickness", "Function Engine.SkeletalMeshComponent.GetClothThickness")()); }
			ScriptFunction SetClothAttachmentResponseCoefficient() { mixin(MGF!("mSetClothAttachmentResponseCoefficient", "Function Engine.SkeletalMeshComponent.SetClothAttachmentResponseCoefficient")()); }
			ScriptFunction SetClothAttachmentTearFactor() { mixin(MGF!("mSetClothAttachmentTearFactor", "Function Engine.SkeletalMeshComponent.SetClothAttachmentTearFactor")()); }
			ScriptFunction SetClothBendingStiffness() { mixin(MGF!("mSetClothBendingStiffness", "Function Engine.SkeletalMeshComponent.SetClothBendingStiffness")()); }
			ScriptFunction SetClothCollisionResponseCoefficient() { mixin(MGF!("mSetClothCollisionResponseCoefficient", "Function Engine.SkeletalMeshComponent.SetClothCollisionResponseCoefficient")()); }
			ScriptFunction SetClothDampingCoefficient() { mixin(MGF!("mSetClothDampingCoefficient", "Function Engine.SkeletalMeshComponent.SetClothDampingCoefficient")()); }
			ScriptFunction SetClothFlags() { mixin(MGF!("mSetClothFlags", "Function Engine.SkeletalMeshComponent.SetClothFlags")()); }
			ScriptFunction SetClothFriction() { mixin(MGF!("mSetClothFriction", "Function Engine.SkeletalMeshComponent.SetClothFriction")()); }
			ScriptFunction SetClothPressure() { mixin(MGF!("mSetClothPressure", "Function Engine.SkeletalMeshComponent.SetClothPressure")()); }
			ScriptFunction SetClothSleepLinearVelocity() { mixin(MGF!("mSetClothSleepLinearVelocity", "Function Engine.SkeletalMeshComponent.SetClothSleepLinearVelocity")()); }
			ScriptFunction SetClothSolverIterations() { mixin(MGF!("mSetClothSolverIterations", "Function Engine.SkeletalMeshComponent.SetClothSolverIterations")()); }
			ScriptFunction SetClothStretchingStiffness() { mixin(MGF!("mSetClothStretchingStiffness", "Function Engine.SkeletalMeshComponent.SetClothStretchingStiffness")()); }
			ScriptFunction SetClothTearFactor() { mixin(MGF!("mSetClothTearFactor", "Function Engine.SkeletalMeshComponent.SetClothTearFactor")()); }
			ScriptFunction SetClothThickness() { mixin(MGF!("mSetClothThickness", "Function Engine.SkeletalMeshComponent.SetClothThickness")()); }
			ScriptFunction SetClothSleep() { mixin(MGF!("mSetClothSleep", "Function Engine.SkeletalMeshComponent.SetClothSleep")()); }
			ScriptFunction SetClothPosition() { mixin(MGF!("mSetClothPosition", "Function Engine.SkeletalMeshComponent.SetClothPosition")()); }
			ScriptFunction SetClothVelocity() { mixin(MGF!("mSetClothVelocity", "Function Engine.SkeletalMeshComponent.SetClothVelocity")()); }
			ScriptFunction AttachClothToCollidingShapes() { mixin(MGF!("mAttachClothToCollidingShapes", "Function Engine.SkeletalMeshComponent.AttachClothToCollidingShapes")()); }
			ScriptFunction EnableClothValidBounds() { mixin(MGF!("mEnableClothValidBounds", "Function Engine.SkeletalMeshComponent.EnableClothValidBounds")()); }
			ScriptFunction SetClothValidBounds() { mixin(MGF!("mSetClothValidBounds", "Function Engine.SkeletalMeshComponent.SetClothValidBounds")()); }
			ScriptFunction UpdateSoftBodyParams() { mixin(MGF!("mUpdateSoftBodyParams", "Function Engine.SkeletalMeshComponent.UpdateSoftBodyParams")()); }
			ScriptFunction SetSoftBodyFrozen() { mixin(MGF!("mSetSoftBodyFrozen", "Function Engine.SkeletalMeshComponent.SetSoftBodyFrozen")()); }
			ScriptFunction WakeSoftBody() { mixin(MGF!("mWakeSoftBody", "Function Engine.SkeletalMeshComponent.WakeSoftBody")()); }
			ScriptFunction FindAnimSequence() { mixin(MGF!("mFindAnimSequence", "Function Engine.SkeletalMeshComponent.FindAnimSequence")()); }
			ScriptFunction SaveAnimSets() { mixin(MGF!("mSaveAnimSets", "Function Engine.SkeletalMeshComponent.SaveAnimSets")()); }
			ScriptFunction RestoreSavedAnimSets() { mixin(MGF!("mRestoreSavedAnimSets", "Function Engine.SkeletalMeshComponent.RestoreSavedAnimSets")()); }
			ScriptFunction GetAnimRateByDuration() { mixin(MGF!("mGetAnimRateByDuration", "Function Engine.SkeletalMeshComponent.GetAnimRateByDuration")()); }
			ScriptFunction GetAnimLength() { mixin(MGF!("mGetAnimLength", "Function Engine.SkeletalMeshComponent.GetAnimLength")()); }
			ScriptFunction FindMorphTarget() { mixin(MGF!("mFindMorphTarget", "Function Engine.SkeletalMeshComponent.FindMorphTarget")()); }
			ScriptFunction FindAnimNode() { mixin(MGF!("mFindAnimNode", "Function Engine.SkeletalMeshComponent.FindAnimNode")()); }
			ScriptFunction AllAnimNodes() { mixin(MGF!("mAllAnimNodes", "Function Engine.SkeletalMeshComponent.AllAnimNodes")()); }
			ScriptFunction FindSkelControl() { mixin(MGF!("mFindSkelControl", "Function Engine.SkeletalMeshComponent.FindSkelControl")()); }
			ScriptFunction FindMorphNode() { mixin(MGF!("mFindMorphNode", "Function Engine.SkeletalMeshComponent.FindMorphNode")()); }
			ScriptFunction GetBoneQuaternion() { mixin(MGF!("mGetBoneQuaternion", "Function Engine.SkeletalMeshComponent.GetBoneQuaternion")()); }
			ScriptFunction GetBoneLocation() { mixin(MGF!("mGetBoneLocation", "Function Engine.SkeletalMeshComponent.GetBoneLocation")()); }
			ScriptFunction MatchRefBone() { mixin(MGF!("mMatchRefBone", "Function Engine.SkeletalMeshComponent.MatchRefBone")()); }
			ScriptFunction GetBoneName() { mixin(MGF!("mGetBoneName", "Function Engine.SkeletalMeshComponent.GetBoneName")()); }
			ScriptFunction GetBoneMatrix() { mixin(MGF!("mGetBoneMatrix", "Function Engine.SkeletalMeshComponent.GetBoneMatrix")()); }
			ScriptFunction GetParentBone() { mixin(MGF!("mGetParentBone", "Function Engine.SkeletalMeshComponent.GetParentBone")()); }
			ScriptFunction GetBoneNames() { mixin(MGF!("mGetBoneNames", "Function Engine.SkeletalMeshComponent.GetBoneNames")()); }
			ScriptFunction BoneIsChildOf() { mixin(MGF!("mBoneIsChildOf", "Function Engine.SkeletalMeshComponent.BoneIsChildOf")()); }
			ScriptFunction GetRefPosePosition() { mixin(MGF!("mGetRefPosePosition", "Function Engine.SkeletalMeshComponent.GetRefPosePosition")()); }
			ScriptFunction GetBoneAxis() { mixin(MGF!("mGetBoneAxis", "Function Engine.SkeletalMeshComponent.GetBoneAxis")()); }
			ScriptFunction TransformToBoneSpace() { mixin(MGF!("mTransformToBoneSpace", "Function Engine.SkeletalMeshComponent.TransformToBoneSpace")()); }
			ScriptFunction TransformFromBoneSpace() { mixin(MGF!("mTransformFromBoneSpace", "Function Engine.SkeletalMeshComponent.TransformFromBoneSpace")()); }
			ScriptFunction FindClosestBone() { mixin(MGF!("mFindClosestBone", "Function Engine.SkeletalMeshComponent.FindClosestBone")()); }
			ScriptFunction GetClosestCollidingBoneLocation() { mixin(MGF!("mGetClosestCollidingBoneLocation", "Function Engine.SkeletalMeshComponent.GetClosestCollidingBoneLocation")()); }
			ScriptFunction SetAnimTreeTemplate() { mixin(MGF!("mSetAnimTreeTemplate", "Function Engine.SkeletalMeshComponent.SetAnimTreeTemplate")()); }
			ScriptFunction SetParentAnimComponent() { mixin(MGF!("mSetParentAnimComponent", "Function Engine.SkeletalMeshComponent.SetParentAnimComponent")()); }
			ScriptFunction UpdateParentBoneMap() { mixin(MGF!("mUpdateParentBoneMap", "Function Engine.SkeletalMeshComponent.UpdateParentBoneMap")()); }
			ScriptFunction InitSkelControls() { mixin(MGF!("mInitSkelControls", "Function Engine.SkeletalMeshComponent.InitSkelControls")()); }
			ScriptFunction InitMorphTargets() { mixin(MGF!("mInitMorphTargets", "Function Engine.SkeletalMeshComponent.InitMorphTargets")()); }
			ScriptFunction FindConstraintIndex() { mixin(MGF!("mFindConstraintIndex", "Function Engine.SkeletalMeshComponent.FindConstraintIndex")()); }
			ScriptFunction FindConstraintBoneName() { mixin(MGF!("mFindConstraintBoneName", "Function Engine.SkeletalMeshComponent.FindConstraintBoneName")()); }
			ScriptFunction FindBodyInstanceNamed() { mixin(MGF!("mFindBodyInstanceNamed", "Function Engine.SkeletalMeshComponent.FindBodyInstanceNamed")()); }
			ScriptFunction SetHasPhysicsAssetInstance() { mixin(MGF!("mSetHasPhysicsAssetInstance", "Function Engine.SkeletalMeshComponent.SetHasPhysicsAssetInstance")()); }
			ScriptFunction UpdateRBBonesFromSpaceBases() { mixin(MGF!("mUpdateRBBonesFromSpaceBases", "Function Engine.SkeletalMeshComponent.UpdateRBBonesFromSpaceBases")()); }
			ScriptFunction ForceSkelUpdate() { mixin(MGF!("mForceSkelUpdate", "Function Engine.SkeletalMeshComponent.ForceSkelUpdate")()); }
			ScriptFunction UpdateAnimations() { mixin(MGF!("mUpdateAnimations", "Function Engine.SkeletalMeshComponent.UpdateAnimations")()); }
			ScriptFunction GetBonesWithinRadius() { mixin(MGF!("mGetBonesWithinRadius", "Function Engine.SkeletalMeshComponent.GetBonesWithinRadius")()); }
			ScriptFunction AddInstanceVertexWeightBoneParented() { mixin(MGF!("mAddInstanceVertexWeightBoneParented", "Function Engine.SkeletalMeshComponent.AddInstanceVertexWeightBoneParented")()); }
			ScriptFunction RemoveInstanceVertexWeightBoneParented() { mixin(MGF!("mRemoveInstanceVertexWeightBoneParented", "Function Engine.SkeletalMeshComponent.RemoveInstanceVertexWeightBoneParented")()); }
			ScriptFunction FindInstanceVertexweightBonePair() { mixin(MGF!("mFindInstanceVertexweightBonePair", "Function Engine.SkeletalMeshComponent.FindInstanceVertexweightBonePair")()); }
			ScriptFunction UpdateInstanceVertexWeightBones() { mixin(MGF!("mUpdateInstanceVertexWeightBones", "Function Engine.SkeletalMeshComponent.UpdateInstanceVertexWeightBones")()); }
			ScriptFunction ToggleInstanceVertexWeights() { mixin(MGF!("mToggleInstanceVertexWeights", "Function Engine.SkeletalMeshComponent.ToggleInstanceVertexWeights")()); }
			ScriptFunction PlayFaceFXAnim() { mixin(MGF!("mPlayFaceFXAnim", "Function Engine.SkeletalMeshComponent.PlayFaceFXAnim")()); }
			ScriptFunction StopFaceFXAnim() { mixin(MGF!("mStopFaceFXAnim", "Function Engine.SkeletalMeshComponent.StopFaceFXAnim")()); }
			ScriptFunction IsPlayingFaceFXAnim() { mixin(MGF!("mIsPlayingFaceFXAnim", "Function Engine.SkeletalMeshComponent.IsPlayingFaceFXAnim")()); }
			ScriptFunction DeclareFaceFXRegister() { mixin(MGF!("mDeclareFaceFXRegister", "Function Engine.SkeletalMeshComponent.DeclareFaceFXRegister")()); }
			ScriptFunction GetFaceFXRegister() { mixin(MGF!("mGetFaceFXRegister", "Function Engine.SkeletalMeshComponent.GetFaceFXRegister")()); }
			ScriptFunction SetFaceFXRegister() { mixin(MGF!("mSetFaceFXRegister", "Function Engine.SkeletalMeshComponent.SetFaceFXRegister")()); }
			ScriptFunction SetFaceFXRegisterEx() { mixin(MGF!("mSetFaceFXRegisterEx", "Function Engine.SkeletalMeshComponent.SetFaceFXRegisterEx")()); }
			ScriptFunction HideBone() { mixin(MGF!("mHideBone", "Function Engine.SkeletalMeshComponent.HideBone")()); }
			ScriptFunction UnHideBone() { mixin(MGF!("mUnHideBone", "Function Engine.SkeletalMeshComponent.UnHideBone")()); }
			ScriptFunction IsBoneHidden() { mixin(MGF!("mIsBoneHidden", "Function Engine.SkeletalMeshComponent.IsBoneHidden")()); }
			ScriptFunction HideBoneByName() { mixin(MGF!("mHideBoneByName", "Function Engine.SkeletalMeshComponent.HideBoneByName")()); }
			ScriptFunction UnHideBoneByName() { mixin(MGF!("mUnHideBoneByName", "Function Engine.SkeletalMeshComponent.UnHideBoneByName")()); }
			ScriptFunction UpdateMeshForBrokenConstraints() { mixin(MGF!("mUpdateMeshForBrokenConstraints", "Function Engine.SkeletalMeshComponent.UpdateMeshForBrokenConstraints")()); }
			ScriptFunction ShowMaterialSection() { mixin(MGF!("mShowMaterialSection", "Function Engine.SkeletalMeshComponent.ShowMaterialSection")()); }
			ScriptFunction PlayAnim() { mixin(MGF!("mPlayAnim", "Function Engine.SkeletalMeshComponent.PlayAnim")()); }
			ScriptFunction StopAnim() { mixin(MGF!("mStopAnim", "Function Engine.SkeletalMeshComponent.StopAnim")()); }
			ScriptFunction CreateForceField() { mixin(MGF!("mCreateForceField", "Function Engine.SkeletalMeshComponent.CreateForceField")()); }
			ScriptFunction PlayParticleEffect() { mixin(MGF!("mPlayParticleEffect", "Function Engine.SkeletalMeshComponent.PlayParticleEffect")()); }
			ScriptFunction SkelMeshCompOnParticleSystemFinished() { mixin(MGF!("mSkelMeshCompOnParticleSystemFinished", "Function Engine.SkeletalMeshComponent.SkelMeshCompOnParticleSystemFinished")()); }
			ScriptFunction BreakConstraint() { mixin(MGF!("mBreakConstraint", "Function Engine.SkeletalMeshComponent.BreakConstraint")()); }
		}
	}
	enum EPhysBodyOp : ubyte
	{
		PBO_None = 0,
		PBO_Term = 1,
		PBO_Disable = 2,
		PBO_MAX = 3,
	}
	enum EFaceFXRegOp : ubyte
	{
		FXRO_Add = 0,
		FXRO_Multiply = 1,
		FXRO_Replace = 2,
		FXRO_MAX = 3,
	}
	enum EFaceFXBlendMode : ubyte
	{
		FXBM_Overwrite = 0,
		FXBM_Additive = 1,
		FXBM_MAX = 2,
	}
	enum EInstanceWeightUsage : ubyte
	{
		IWU_PartialSwap = 0,
		IWU_FullSwap = 1,
		IWU_MAX = 2,
	}
	enum ERootMotionRotationMode : ubyte
	{
		RMRM_Ignore = 0,
		RMRM_RotateActor = 1,
		RMRM_MAX = 2,
	}
	enum ERootMotionMode : ubyte
	{
		RMM_Translate = 0,
		RMM_Velocity = 1,
		RMM_Ignore = 2,
		RMM_Accel = 3,
		RMM_Relative = 4,
		RMM_MAX = 5,
	}
	enum EMaxDistanceScaleMode : ubyte
	{
		MDSM_Multiply = 0,
		MDSM_Substract = 1,
		MDSM_MAX = 2,
	}
	struct BonePair
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMeshComponent.BonePair")()); }
		@property final auto ref ScriptName Bones() { mixin(MGPS!("ScriptName", 0)()); }
	}
	struct SkelMeshComponentLODInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMeshComponent.SkelMeshComponentLODInfo")()); }
		@property final
		{
			auto ref
			{
				SkeletalMeshComponent.EInstanceWeightUsage InstanceWeightUsage() { mixin(MGPS!("SkeletalMeshComponent.EInstanceWeightUsage", 16)()); }
				ScriptArray!(bool) HiddenMaterials() { mixin(MGPS!("ScriptArray!(bool)", 0)()); }
				int InstanceWeightIdx() { mixin(MGPS!("int", 20)()); }
			}
			bool bNeedsInstanceWeightUpdate() { mixin(MGBPS!(12, 0x1)()); }
			bool bNeedsInstanceWeightUpdate(bool val) { mixin(MSBPS!(12, 0x1)()); }
			bool bAlwaysUseInstanceWeights() { mixin(MGBPS!(12, 0x2)()); }
			bool bAlwaysUseInstanceWeights(bool val) { mixin(MSBPS!(12, 0x2)()); }
		}
	}
	struct Attachment
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMeshComponent.Attachment")()); }
		@property final auto ref
		{
			// WARNING: Property 'Component' has the same name as a defined type!
			ScriptName BoneName() { mixin(MGPS!("ScriptName", 4)()); }
			Vector RelativeLocation() { mixin(MGPS!("Vector", 12)()); }
			Rotator RelativeRotation() { mixin(MGPS!("Rotator", 24)()); }
			Vector RelativeScale() { mixin(MGPS!("Vector", 36)()); }
		}
	}
	struct ActiveMorph
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SkeletalMeshComponent.ActiveMorph")()); }
		@property final auto ref
		{
			MorphTarget Target() { mixin(MGPS!("MorphTarget", 0)()); }
			float Weight() { mixin(MGPS!("float", 4)()); }
		}
	}
	@property final
	{
		auto ref
		{
			AnimNode Animations() { mixin(MGPC!("AnimNode", 512)()); }
			// WARNING: Property 'PhysicsAssetInstance' has the same name as a defined type!
			ScriptArray!(SkeletalMeshComponent.SkelMeshComponentLODInfo) LODInfo() { mixin(MGPC!("ScriptArray!(SkeletalMeshComponent.SkelMeshComponentLODInfo)", 976)()); }
			// WARNING: Property 'PhysicsAsset' has the same name as a defined type!
			// WARNING: Property 'SkeletalMesh' has the same name as a defined type!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'AttachedToSkelComponent'!
			AnimTree AnimTreeTemplate() { mixin(MGPC!("AnimTree", 508)()); }
			ScriptArray!(AnimNode) AnimTickArray() { mixin(MGPC!("ScriptArray!(AnimNode)", 516)()); }
			ScriptArray!(AnimNode) AnimAlwaysTickArray() { mixin(MGPC!("ScriptArray!(AnimNode)", 528)()); }
			ScriptArray!(int) AnimTickRelevancyArray() { mixin(MGPC!("ScriptArray!(int)", 540)()); }
			ScriptArray!(float) AnimTickWeightsArray() { mixin(MGPC!("ScriptArray!(float)", 552)()); }
			ScriptArray!(SkelControlBase) SkelControlTickArray() { mixin(MGPC!("ScriptArray!(SkelControlBase)", 564)()); }
			UObject.Pointer ApexClothing() { mixin(MGPC!("UObject.Pointer", 584)()); }
			float PhysicsWeight() { mixin(MGPC!("float", 588)()); }
			float GlobalAnimRateScale() { mixin(MGPC!("float", 592)()); }
			UObject.Pointer MeshObject() { mixin(MGPC!("UObject.Pointer", 596)()); }
			UObject.Color WireframeColor() { mixin(MGPC!("UObject.Color", 600)()); }
			ScriptArray!(UObject.BoneAtom) SpaceBases() { mixin(MGPC!("ScriptArray!(UObject.BoneAtom)", 604)()); }
			ScriptArray!(UObject.BoneAtom) LocalAtoms() { mixin(MGPC!("ScriptArray!(UObject.BoneAtom)", 616)()); }
			ScriptArray!(UObject.BoneAtom) CachedLocalAtoms() { mixin(MGPC!("ScriptArray!(UObject.BoneAtom)", 628)()); }
			ScriptArray!(UObject.BoneAtom) CachedSpaceBases() { mixin(MGPC!("ScriptArray!(UObject.BoneAtom)", 640)()); }
			int LowUpdateFrameRate() { mixin(MGPC!("int", 652)()); }
			ScriptArray!(ubyte) RequiredBones() { mixin(MGPC!("ScriptArray!(ubyte)", 656)()); }
			ScriptArray!(ubyte) ComposeOrderedRequiredBones() { mixin(MGPC!("ScriptArray!(ubyte)", 668)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ParentAnimComponent'!
			ScriptArray!(int) ParentBoneMap() { mixin(MGPC!("ScriptArray!(int)", 688)()); }
			ScriptArray!(AnimSet) AnimSets() { mixin(MGPC!("ScriptArray!(AnimSet)", 700)()); }
			ScriptArray!(AnimSet) TemporarySavedAnimSets() { mixin(MGPC!("ScriptArray!(AnimSet)", 712)()); }
			ScriptArray!(MorphTargetSet) MorphSets() { mixin(MGPC!("ScriptArray!(MorphTargetSet)", 724)()); }
			ScriptArray!(SkeletalMeshComponent.ActiveMorph) ActiveMorphs() { mixin(MGPC!("ScriptArray!(SkeletalMeshComponent.ActiveMorph)", 736)()); }
			ScriptArray!(SkeletalMeshComponent.ActiveMorph) ActiveCurveMorphs() { mixin(MGPC!("ScriptArray!(SkeletalMeshComponent.ActiveMorph)", 748)()); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'MorphTargetIndexMap'!
			ScriptArray!(SkeletalMeshComponent.Attachment) Attachments() { mixin(MGPC!("ScriptArray!(SkeletalMeshComponent.Attachment)", 820)()); }
			ScriptArray!(ubyte) SkelControlIndex() { mixin(MGPC!("ScriptArray!(ubyte)", 832)()); }
			ScriptArray!(ubyte) PostPhysSkelControlIndex() { mixin(MGPC!("ScriptArray!(ubyte)", 844)()); }
			int ForcedLodModel() { mixin(MGPC!("int", 856)()); }
			int MinLodModel() { mixin(MGPC!("int", 860)()); }
			int PredictedLODLevel() { mixin(MGPC!("int", 864)()); }
			int OldPredictedLODLevel() { mixin(MGPC!("int", 868)()); }
			float MaxDistanceFactor() { mixin(MGPC!("float", 872)()); }
			int bForceWireframe() { mixin(MGPC!("int", 876)()); }
			int bForceRefpose() { mixin(MGPC!("int", 880)()); }
			int bOldForceRefPose() { mixin(MGPC!("int", 884)()); }
			int bDisplayBones() { mixin(MGPC!("int", 892)()); }
			int bShowPrePhysBones() { mixin(MGPC!("int", 896)()); }
			int bHideSkin() { mixin(MGPC!("int", 900)()); }
			int bForceRawOffset() { mixin(MGPC!("int", 904)()); }
			int bIgnoreControllers() { mixin(MGPC!("int", 908)()); }
			int bTransformFromAnimParent() { mixin(MGPC!("int", 912)()); }
			int TickTag() { mixin(MGPC!("int", 916)()); }
			int InitTag() { mixin(MGPC!("int", 920)()); }
			int CachedAtomsTag() { mixin(MGPC!("int", 924)()); }
			int bUseSingleBodyPhysics() { mixin(MGPC!("int", 928)()); }
			int bRequiredBonesUpToDate() { mixin(MGPC!("int", 932)()); }
			float MinDistFactorForKinematicUpdate() { mixin(MGPC!("float", 936)()); }
			int FramesPhysicsAsleep() { mixin(MGPC!("int", 940)()); }
			Vector LineCheckBoundsScale() { mixin(MGPC!("Vector", 948)()); }
			ScriptArray!(SkeletalMeshComponent.BonePair) InstanceVertexWeightBones() { mixin(MGPC!("ScriptArray!(SkeletalMeshComponent.BonePair)", 964)()); }
			Vector FrozenLocalToWorldPos() { mixin(MGPC!("Vector", 988)()); }
			Rotator FrozenLocalToWorldRot() { mixin(MGPC!("Rotator", 1000)()); }
			Vector ClothExternalForce() { mixin(MGPC!("Vector", 1012)()); }
			Vector ClothWind() { mixin(MGPC!("Vector", 1024)()); }
			Vector ClothBaseVelClampRange() { mixin(MGPC!("Vector", 1036)()); }
			float ClothBlendWeight() { mixin(MGPC!("float", 1048)()); }
			float ClothDynamicBlendWeight() { mixin(MGPC!("float", 1052)()); }
			float ClothBlendMinDistanceFactor() { mixin(MGPC!("float", 1056)()); }
			float ClothBlendMaxDistanceFactor() { mixin(MGPC!("float", 1060)()); }
			Vector MinPosDampRange() { mixin(MGPC!("Vector", 1064)()); }
			Vector MaxPosDampRange() { mixin(MGPC!("Vector", 1076)()); }
			Vector MinPosDampScale() { mixin(MGPC!("Vector", 1088)()); }
			Vector MaxPosDampScale() { mixin(MGPC!("Vector", 1100)()); }
			UObject.Pointer ClothSim() { mixin(MGPC!("UObject.Pointer", 1112)()); }
			int SceneIndex() { mixin(MGPC!("int", 1116)()); }
			ScriptArray!(Vector) ClothMeshPosData() { mixin(MGPC!("ScriptArray!(Vector)", 1120)()); }
			ScriptArray!(Vector) ClothMeshNormalData() { mixin(MGPC!("ScriptArray!(Vector)", 1132)()); }
			ScriptArray!(int) ClothMeshIndexData() { mixin(MGPC!("ScriptArray!(int)", 1144)()); }
			int NumClothMeshVerts() { mixin(MGPC!("int", 1156)()); }
			int NumClothMeshIndices() { mixin(MGPC!("int", 1160)()); }
			ScriptArray!(int) ClothMeshParentData() { mixin(MGPC!("ScriptArray!(int)", 1164)()); }
			int NumClothMeshParentIndices() { mixin(MGPC!("int", 1176)()); }
			ScriptArray!(Vector) ClothMeshWeldedPosData() { mixin(MGPC!("ScriptArray!(Vector)", 1180)()); }
			ScriptArray!(Vector) ClothMeshWeldedNormalData() { mixin(MGPC!("ScriptArray!(Vector)", 1192)()); }
			ScriptArray!(int) ClothMeshWeldedIndexData() { mixin(MGPC!("ScriptArray!(int)", 1204)()); }
			int ClothDirtyBufferFlag() { mixin(MGPC!("int", 1216)()); }
			PrimitiveComponent.ERBCollisionChannel ClothRBChannel() { mixin(MGPC!("PrimitiveComponent.ERBCollisionChannel", 1220)()); }
			PrimitiveComponent.RBCollisionChannelContainer ClothRBCollideWithChannels() { mixin(MGPC!("PrimitiveComponent.RBCollisionChannelContainer", 1224)()); }
			float ClothForceScale() { mixin(MGPC!("float", 1228)()); }
			float ClothImpulseScale() { mixin(MGPC!("float", 1232)()); }
			float ClothAttachmentTearFactor() { mixin(MGPC!("float", 1236)()); }
			float MinDistanceForClothReset() { mixin(MGPC!("float", 1244)()); }
			Vector LastClothLocation() { mixin(MGPC!("Vector", 1248)()); }
			PrimitiveComponent.ERBCollisionChannel ApexClothingRBChannel() { mixin(MGPC!("PrimitiveComponent.ERBCollisionChannel", 1260)()); }
			PrimitiveComponent.RBCollisionChannelContainer ApexClothingRBCollideWithChannels() { mixin(MGPC!("PrimitiveComponent.RBCollisionChannelContainer", 1264)()); }
			Vector WindVelocity() { mixin(MGPC!("Vector", 1272)()); }
			float WindVelocityBlendTime() { mixin(MGPC!("float", 1284)()); }
			UObject.Pointer SoftBodySim() { mixin(MGPC!("UObject.Pointer", 1292)()); }
			int SoftBodySceneIndex() { mixin(MGPC!("int", 1296)()); }
			ScriptArray!(Vector) SoftBodyTetraPosData() { mixin(MGPC!("ScriptArray!(Vector)", 1304)()); }
			ScriptArray!(int) SoftBodyTetraIndexData() { mixin(MGPC!("ScriptArray!(int)", 1316)()); }
			int NumSoftBodyTetraVerts() { mixin(MGPC!("int", 1328)()); }
			int NumSoftBodyTetraIndices() { mixin(MGPC!("int", 1332)()); }
			float SoftBodyImpulseScale() { mixin(MGPC!("float", 1336)()); }
			PrimitiveComponent.ERBCollisionChannel SoftBodyRBChannel() { mixin(MGPC!("PrimitiveComponent.ERBCollisionChannel", 1344)()); }
			PrimitiveComponent.RBCollisionChannelContainer SoftBodyRBCollideWithChannels() { mixin(MGPC!("PrimitiveComponent.RBCollisionChannelContainer", 1348)()); }
			UObject.Pointer SoftBodyASVPlane() { mixin(MGPC!("UObject.Pointer", 1352)()); }
			Material LimitMaterial() { mixin(MGPC!("Material", 1356)()); }
			UObject.BoneAtom RootMotionDelta() { mixin(MGPC!("UObject.BoneAtom", 1360)()); }
			Vector RootMotionVelocity() { mixin(MGPC!("Vector", 1392)()); }
			Vector RootBoneTranslation() { mixin(MGPC!("Vector", 1404)()); }
			Vector RootMotionAccelScale() { mixin(MGPC!("Vector", 1416)()); }
			SkeletalMeshComponent.ERootMotionMode RootMotionMode() { mixin(MGPC!("SkeletalMeshComponent.ERootMotionMode", 1428)()); }
			SkeletalMeshComponent.ERootMotionMode PreviousRMM() { mixin(MGPC!("SkeletalMeshComponent.ERootMotionMode", 1429)()); }
			SkeletalMeshComponent.ERootMotionMode PendingRMM() { mixin(MGPC!("SkeletalMeshComponent.ERootMotionMode", 1430)()); }
			SkeletalMeshComponent.ERootMotionMode OldPendingRMM() { mixin(MGPC!("SkeletalMeshComponent.ERootMotionMode", 1431)()); }
			int bRMMOneFrameDelay() { mixin(MGPC!("int", 1432)()); }
			SkeletalMeshComponent.ERootMotionRotationMode RootMotionRotationMode() { mixin(MGPC!("SkeletalMeshComponent.ERootMotionRotationMode", 1436)()); }
			SkeletalMeshComponent.EFaceFXBlendMode FaceFXBlendMode() { mixin(MGPC!("SkeletalMeshComponent.EFaceFXBlendMode", 1437)()); }
			UObject.Pointer FaceFXActorInstance() { mixin(MGPC!("UObject.Pointer", 1440)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'CachedFaceFXAudioComp'!
			ScriptArray!(ubyte) BoneVisibility() { mixin(MGPC!("ScriptArray!(ubyte)", 1448)()); }
			UObject.BoneAtom LocalToWorldBoneAtom() { mixin(MGPC!("UObject.BoneAtom", 1472)()); }
			float ProgressiveDrawingFraction() { mixin(MGPC!("float", 1504)()); }
			ubyte CustomSortAlternateIndexMode() { mixin(MGPC!("ubyte", 1508)()); }
		}
		bool bShouldIgnoreParentAnimComponent() { mixin(MGBPC!(684, 0x1)()); }
		bool bShouldIgnoreParentAnimComponent(bool val) { mixin(MSBPC!(684, 0x1)()); }
		bool bNoSkeletonUpdate() { mixin(MGBPC!(888, 0x1)()); }
		bool bNoSkeletonUpdate(bool val) { mixin(MSBPC!(888, 0x1)()); }
		bool bSkipAllUpdateWhenPhysicsAsleep() { mixin(MGBPC!(944, 0x1)()); }
		bool bSkipAllUpdateWhenPhysicsAsleep(bool val) { mixin(MSBPC!(944, 0x1)()); }
		bool bConsiderAllBodiesForBounds() { mixin(MGBPC!(944, 0x2)()); }
		bool bConsiderAllBodiesForBounds(bool val) { mixin(MSBPC!(944, 0x2)()); }
		bool bUpdateSkelWhenNotRendered() { mixin(MGBPC!(944, 0x4)()); }
		bool bUpdateSkelWhenNotRendered(bool val) { mixin(MSBPC!(944, 0x4)()); }
		bool bIgnoreControllersWhenNotRendered() { mixin(MGBPC!(944, 0x8)()); }
		bool bIgnoreControllersWhenNotRendered(bool val) { mixin(MSBPC!(944, 0x8)()); }
		bool bTickAnimNodesWhenNotRendered() { mixin(MGBPC!(944, 0x10)()); }
		bool bTickAnimNodesWhenNotRendered(bool val) { mixin(MSBPC!(944, 0x10)()); }
		bool bNotUpdatingKinematicDueToDistance() { mixin(MGBPC!(944, 0x20)()); }
		bool bNotUpdatingKinematicDueToDistance(bool val) { mixin(MSBPC!(944, 0x20)()); }
		bool bForceDiscardRootMotion() { mixin(MGBPC!(944, 0x40)()); }
		bool bForceDiscardRootMotion(bool val) { mixin(MSBPC!(944, 0x40)()); }
		bool bRootMotionModeChangeNotify() { mixin(MGBPC!(944, 0x80)()); }
		bool bRootMotionModeChangeNotify(bool val) { mixin(MSBPC!(944, 0x80)()); }
		bool bRootMotionExtractedNotify() { mixin(MGBPC!(944, 0x100)()); }
		bool bRootMotionExtractedNotify(bool val) { mixin(MSBPC!(944, 0x100)()); }
		bool bDisableFaceFXMaterialInstanceCreation() { mixin(MGBPC!(944, 0x200)()); }
		bool bDisableFaceFXMaterialInstanceCreation(bool val) { mixin(MSBPC!(944, 0x200)()); }
		bool bAnimTreeInitialised() { mixin(MGBPC!(944, 0x400)()); }
		bool bAnimTreeInitialised(bool val) { mixin(MSBPC!(944, 0x400)()); }
		bool bForceMeshObjectUpdate() { mixin(MGBPC!(944, 0x800)()); }
		bool bForceMeshObjectUpdate(bool val) { mixin(MSBPC!(944, 0x800)()); }
		bool bHasPhysicsAssetInstance() { mixin(MGBPC!(944, 0x1000)()); }
		bool bHasPhysicsAssetInstance(bool val) { mixin(MSBPC!(944, 0x1000)()); }
		bool bUpdateKinematicBonesFromAnimation() { mixin(MGBPC!(944, 0x2000)()); }
		bool bUpdateKinematicBonesFromAnimation(bool val) { mixin(MSBPC!(944, 0x2000)()); }
		bool bUpdateJointsFromAnimation() { mixin(MGBPC!(944, 0x4000)()); }
		bool bUpdateJointsFromAnimation(bool val) { mixin(MSBPC!(944, 0x4000)()); }
		bool bSkelCompFixed() { mixin(MGBPC!(944, 0x8000)()); }
		bool bSkelCompFixed(bool val) { mixin(MSBPC!(944, 0x8000)()); }
		bool bHasHadPhysicsBlendedIn() { mixin(MGBPC!(944, 0x10000)()); }
		bool bHasHadPhysicsBlendedIn(bool val) { mixin(MSBPC!(944, 0x10000)()); }
		bool bForceUpdateAttachmentsInTick() { mixin(MGBPC!(944, 0x20000)()); }
		bool bForceUpdateAttachmentsInTick(bool val) { mixin(MSBPC!(944, 0x20000)()); }
		bool bEnableFullAnimWeightBodies() { mixin(MGBPC!(944, 0x40000)()); }
		bool bEnableFullAnimWeightBodies(bool val) { mixin(MSBPC!(944, 0x40000)()); }
		bool bPerBoneVolumeEffects() { mixin(MGBPC!(944, 0x80000)()); }
		bool bPerBoneVolumeEffects(bool val) { mixin(MSBPC!(944, 0x80000)()); }
		bool bPerBoneMotionBlur() { mixin(MGBPC!(944, 0x100000)()); }
		bool bPerBoneMotionBlur(bool val) { mixin(MSBPC!(944, 0x100000)()); }
		bool bSyncActorLocationToRootRigidBody() { mixin(MGBPC!(944, 0x200000)()); }
		bool bSyncActorLocationToRootRigidBody(bool val) { mixin(MSBPC!(944, 0x200000)()); }
		bool bUseRawData() { mixin(MGBPC!(944, 0x400000)()); }
		bool bUseRawData(bool val) { mixin(MSBPC!(944, 0x400000)()); }
		bool bDisableWarningWhenAnimNotFound() { mixin(MGBPC!(944, 0x800000)()); }
		bool bDisableWarningWhenAnimNotFound(bool val) { mixin(MSBPC!(944, 0x800000)()); }
		bool bOverrideAttachmentOwnerVisibility() { mixin(MGBPC!(944, 0x1000000)()); }
		bool bOverrideAttachmentOwnerVisibility(bool val) { mixin(MSBPC!(944, 0x1000000)()); }
		bool bNeedsToDeleteHitMask() { mixin(MGBPC!(944, 0x2000000)()); }
		bool bNeedsToDeleteHitMask(bool val) { mixin(MSBPC!(944, 0x2000000)()); }
		bool bPauseAnims() { mixin(MGBPC!(944, 0x4000000)()); }
		bool bPauseAnims(bool val) { mixin(MSBPC!(944, 0x4000000)()); }
		bool bChartDistanceFactor() { mixin(MGBPC!(944, 0x8000000)()); }
		bool bChartDistanceFactor(bool val) { mixin(MSBPC!(944, 0x8000000)()); }
		bool bEnableLineCheckWithBounds() { mixin(MGBPC!(944, 0x10000000)()); }
		bool bEnableLineCheckWithBounds(bool val) { mixin(MSBPC!(944, 0x10000000)()); }
		bool bCanHighlightSelectedSections() { mixin(MGBPC!(944, 0x20000000)()); }
		bool bCanHighlightSelectedSections(bool val) { mixin(MSBPC!(944, 0x20000000)()); }
		bool bEnableClothSimulation() { mixin(MGBPC!(960, 0x1)()); }
		bool bEnableClothSimulation(bool val) { mixin(MSBPC!(960, 0x1)()); }
		bool bDisableClothCollision() { mixin(MGBPC!(960, 0x2)()); }
		bool bDisableClothCollision(bool val) { mixin(MSBPC!(960, 0x2)()); }
		bool bClothFrozen() { mixin(MGBPC!(960, 0x4)()); }
		bool bClothFrozen(bool val) { mixin(MSBPC!(960, 0x4)()); }
		bool bAutoFreezeClothWhenNotRendered() { mixin(MGBPC!(960, 0x8)()); }
		bool bAutoFreezeClothWhenNotRendered(bool val) { mixin(MSBPC!(960, 0x8)()); }
		bool bClothAwakeOnStartup() { mixin(MGBPC!(960, 0x10)()); }
		bool bClothAwakeOnStartup(bool val) { mixin(MSBPC!(960, 0x10)()); }
		bool bClothBaseVelClamp() { mixin(MGBPC!(960, 0x20)()); }
		bool bClothBaseVelClamp(bool val) { mixin(MSBPC!(960, 0x20)()); }
		bool bClothBaseVelInterp() { mixin(MGBPC!(960, 0x40)()); }
		bool bClothBaseVelInterp(bool val) { mixin(MSBPC!(960, 0x40)()); }
		bool bAttachClothVertsToBaseBody() { mixin(MGBPC!(960, 0x80)()); }
		bool bAttachClothVertsToBaseBody(bool val) { mixin(MSBPC!(960, 0x80)()); }
		bool bIsClothOnStaticObject() { mixin(MGBPC!(960, 0x100)()); }
		bool bIsClothOnStaticObject(bool val) { mixin(MSBPC!(960, 0x100)()); }
		bool bUpdatedFixedClothVerts() { mixin(MGBPC!(960, 0x200)()); }
		bool bUpdatedFixedClothVerts(bool val) { mixin(MSBPC!(960, 0x200)()); }
		bool bClothPositionalDampening() { mixin(MGBPC!(960, 0x400)()); }
		bool bClothPositionalDampening(bool val) { mixin(MSBPC!(960, 0x400)()); }
		bool bClothWindRelativeToOwner() { mixin(MGBPC!(960, 0x800)()); }
		bool bClothWindRelativeToOwner(bool val) { mixin(MSBPC!(960, 0x800)()); }
		bool bRecentlyRendered() { mixin(MGBPC!(960, 0x1000)()); }
		bool bRecentlyRendered(bool val) { mixin(MSBPC!(960, 0x1000)()); }
		bool bCacheAnimSequenceNodes() { mixin(MGBPC!(960, 0x2000)()); }
		bool bCacheAnimSequenceNodes(bool val) { mixin(MSBPC!(960, 0x2000)()); }
		bool bNeedsInstanceWeightUpdate() { mixin(MGBPC!(960, 0x4000)()); }
		bool bNeedsInstanceWeightUpdate(bool val) { mixin(MSBPC!(960, 0x4000)()); }
		bool bAlwaysUseInstanceWeights() { mixin(MGBPC!(960, 0x8000)()); }
		bool bAlwaysUseInstanceWeights(bool val) { mixin(MSBPC!(960, 0x8000)()); }
		bool bUpdateComposeSkeletonPasses() { mixin(MGBPC!(960, 0x10000)()); }
		bool bUpdateComposeSkeletonPasses(bool val) { mixin(MSBPC!(960, 0x10000)()); }
		bool bValidTemporarySavedAnimSets() { mixin(MGBPC!(960, 0x20000)()); }
		bool bValidTemporarySavedAnimSets(bool val) { mixin(MSBPC!(960, 0x20000)()); }
		bool bClothUseCompartment() { mixin(MGBPC!(1240, 0x1)()); }
		bool bClothUseCompartment(bool val) { mixin(MSBPC!(1240, 0x1)()); }
		bool bAutoFreezeApexClothingWhenNotRendered() { mixin(MGBPC!(1268, 0x1)()); }
		bool bAutoFreezeApexClothingWhenNotRendered(bool val) { mixin(MSBPC!(1268, 0x1)()); }
		bool bSkipInitClothing() { mixin(MGBPC!(1288, 0x1)()); }
		bool bSkipInitClothing(bool val) { mixin(MSBPC!(1288, 0x1)()); }
		bool bEnableSoftBodySimulation() { mixin(MGBPC!(1300, 0x1)()); }
		bool bEnableSoftBodySimulation(bool val) { mixin(MSBPC!(1300, 0x1)()); }
		bool bSoftBodyFrozen() { mixin(MGBPC!(1340, 0x1)()); }
		bool bSoftBodyFrozen(bool val) { mixin(MSBPC!(1340, 0x1)()); }
		bool bAutoFreezeSoftBodyWhenNotRendered() { mixin(MGBPC!(1340, 0x2)()); }
		bool bAutoFreezeSoftBodyWhenNotRendered(bool val) { mixin(MSBPC!(1340, 0x2)()); }
		bool bSoftBodyAwakeOnStartup() { mixin(MGBPC!(1340, 0x4)()); }
		bool bSoftBodyAwakeOnStartup(bool val) { mixin(MSBPC!(1340, 0x4)()); }
		bool bSoftBodyUseCompartment() { mixin(MGBPC!(1340, 0x8)()); }
		bool bSoftBodyUseCompartment(bool val) { mixin(MSBPC!(1340, 0x8)()); }
	}
final:
	void AttachComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pComponent, ScriptName BoneName, Vector* RelativeLocation = null, Rotator* RelativeRotation = null, Vector* RelativeScale = null)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pComponent;
		*cast(ScriptName*)&params[4] = BoneName;
		if (RelativeLocation !is null)
			*cast(Vector*)&params[12] = *RelativeLocation;
		if (RelativeRotation !is null)
			*cast(Rotator*)&params[24] = *RelativeRotation;
		if (RelativeScale !is null)
			*cast(Vector*)&params[36] = *RelativeScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachComponent, params.ptr, cast(void*)0);
	}
	void DetachComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pComponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pComponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachComponent, params.ptr, cast(void*)0);
	}
	void AttachComponentToSocket(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pComponent, ScriptName SocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pComponent;
		*cast(ScriptName*)&params[4] = SocketName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachComponentToSocket, params.ptr, cast(void*)0);
	}
	bool GetSocketWorldLocationAndRotation(ScriptName InSocketName, ref Vector OutLocation, Rotator* OutRotation = null, int* Space = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InSocketName;
		*cast(Vector*)&params[8] = OutLocation;
		if (OutRotation !is null)
			*cast(Rotator*)&params[20] = *OutRotation;
		if (Space !is null)
			*cast(int*)&params[32] = *Space;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSocketWorldLocationAndRotation, params.ptr, cast(void*)0);
		OutLocation = *cast(Vector*)&params[8];
		if (OutRotation !is null)
			*OutRotation = *cast(Rotator*)&params[20];
		return *cast(bool*)&params[36];
	}
	SkeletalMeshSocket GetSocketByName(ScriptName InSocketName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InSocketName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSocketByName, params.ptr, cast(void*)0);
		return *cast(SkeletalMeshSocket*)&params[8];
	}
	ScriptName GetSocketBoneName(ScriptName InSocketName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InSocketName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSocketBoneName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* FindComponentAttachedToBone(ScriptName InBoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InBoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindComponentAttachedToBone, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[8];
	}
	bool IsComponentAttached(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pComponent, ScriptName* BoneName = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pComponent;
		if (BoneName !is null)
			*cast(ScriptName*)&params[4] = *BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsComponentAttached, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void AttachedComponents(ScriptClass BaseClass, ref 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OutComponent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OutComponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachedComponents, params.ptr, cast(void*)0);
		OutComponent = *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4];
	}
	UObject.Matrix GetTransformMatrix()
	{
		ubyte params[64];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTransformMatrix, params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)params.ptr;
	}
	void SetSkeletalMesh(SkeletalMesh NewMesh, bool* bKeepSpaceBases = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SkeletalMesh*)params.ptr = NewMesh;
		if (bKeepSpaceBases !is null)
			*cast(bool*)&params[4] = *bKeepSpaceBases;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkeletalMesh, params.ptr, cast(void*)0);
	}
	void SetPhysicsAsset(PhysicsAsset NewPhysicsAsset, bool* bForceReInit = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PhysicsAsset*)params.ptr = NewPhysicsAsset;
		if (bForceReInit !is null)
			*cast(bool*)&params[4] = *bForceReInit;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPhysicsAsset, params.ptr, cast(void*)0);
	}
	void SetForceRefPose(bool bNewForceRefPose)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewForceRefPose;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetForceRefPose, params.ptr, cast(void*)0);
	}
	void SetEnableClothSimulation(bool bInEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnableClothSimulation, params.ptr, cast(void*)0);
	}
	void SetClothFrozen(bool bNewFrozen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFrozen;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothFrozen, params.ptr, cast(void*)0);
	}
	void SetEnableClothingSimulation(bool bInEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnableClothingSimulation, params.ptr, cast(void*)0);
	}
	void UpdateClothParams()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateClothParams, cast(void*)0, cast(void*)0);
	}
	void SetClothExternalForce(Vector InForce)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = InForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothExternalForce, params.ptr, cast(void*)0);
	}
	void SetAttachClothVertsToBaseBody(bool bAttachVerts)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAttachVerts;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAttachClothVertsToBaseBody, params.ptr, cast(void*)0);
	}
	void ResetClothVertsToRefPose()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetClothVertsToRefPose, cast(void*)0, cast(void*)0);
	}
	float GetClothAttachmentResponseCoefficient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothAttachmentResponseCoefficient, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothAttachmentTearFactor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothAttachmentTearFactor, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothBendingStiffness()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothBendingStiffness, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothCollisionResponseCoefficient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothCollisionResponseCoefficient, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothDampingCoefficient()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothDampingCoefficient, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int GetClothFlags()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothFlags, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	float GetClothFriction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothFriction, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothPressure()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothPressure, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothSleepLinearVelocity()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothSleepLinearVelocity, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	int GetClothSolverIterations()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothSolverIterations, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	float GetClothStretchingStiffness()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothStretchingStiffness, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothTearFactor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothTearFactor, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetClothThickness()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClothThickness, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SetClothAttachmentResponseCoefficient(float ClothAttachmentResponseCoefficient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothAttachmentResponseCoefficient;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothAttachmentResponseCoefficient, params.ptr, cast(void*)0);
	}
	void SetClothAttachmentTearFactor(float ClothAttachTearFactor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothAttachTearFactor;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothAttachmentTearFactor, params.ptr, cast(void*)0);
	}
	void SetClothBendingStiffness(float ClothBendingStiffness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothBendingStiffness;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothBendingStiffness, params.ptr, cast(void*)0);
	}
	void SetClothCollisionResponseCoefficient(float ClothCollisionResponseCoefficient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothCollisionResponseCoefficient;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothCollisionResponseCoefficient, params.ptr, cast(void*)0);
	}
	void SetClothDampingCoefficient(float ClothDampingCoefficient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothDampingCoefficient;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothDampingCoefficient, params.ptr, cast(void*)0);
	}
	void SetClothFlags(int ClothFlags)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClothFlags;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothFlags, params.ptr, cast(void*)0);
	}
	void SetClothFriction(float ClothFriction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothFriction;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothFriction, params.ptr, cast(void*)0);
	}
	void SetClothPressure(float ClothPressure)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothPressure;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothPressure, params.ptr, cast(void*)0);
	}
	void SetClothSleepLinearVelocity(float ClothSleepLinearVelocity)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothSleepLinearVelocity;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothSleepLinearVelocity, params.ptr, cast(void*)0);
	}
	void SetClothSolverIterations(int ClothSolverIterations)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClothSolverIterations;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothSolverIterations, params.ptr, cast(void*)0);
	}
	void SetClothStretchingStiffness(float ClothStretchingStiffness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothStretchingStiffness;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothStretchingStiffness, params.ptr, cast(void*)0);
	}
	void SetClothTearFactor(float ClothTearFactor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothTearFactor;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothTearFactor, params.ptr, cast(void*)0);
	}
	void SetClothThickness(float ClothThickness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ClothThickness;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothThickness, params.ptr, cast(void*)0);
	}
	void SetClothSleep(bool IfClothSleep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = IfClothSleep;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothSleep, params.ptr, cast(void*)0);
	}
	void SetClothPosition(Vector ClothOffSet)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = ClothOffSet;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothPosition, params.ptr, cast(void*)0);
	}
	void SetClothVelocity(Vector VelocityOffSet)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = VelocityOffSet;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothVelocity, params.ptr, cast(void*)0);
	}
	void AttachClothToCollidingShapes(bool AttatchTwoWay, bool AttachTearable)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = AttatchTwoWay;
		*cast(bool*)&params[4] = AttachTearable;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachClothToCollidingShapes, params.ptr, cast(void*)0);
	}
	void EnableClothValidBounds(bool IfEnableClothValidBounds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = IfEnableClothValidBounds;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableClothValidBounds, params.ptr, cast(void*)0);
	}
	void SetClothValidBounds(Vector ClothValidBoundsMin, Vector ClothValidBoundsMax)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = ClothValidBoundsMin;
		*cast(Vector*)&params[12] = ClothValidBoundsMax;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetClothValidBounds, params.ptr, cast(void*)0);
	}
	void UpdateSoftBodyParams()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSoftBodyParams, cast(void*)0, cast(void*)0);
	}
	void SetSoftBodyFrozen(bool bNewFrozen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFrozen;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSoftBodyFrozen, params.ptr, cast(void*)0);
	}
	void WakeSoftBody()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.WakeSoftBody, cast(void*)0, cast(void*)0);
	}
	AnimSequence FindAnimSequence(ScriptName AnimSeqName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindAnimSequence, params.ptr, cast(void*)0);
		return *cast(AnimSequence*)&params[8];
	}
	void SaveAnimSets()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveAnimSets, cast(void*)0, cast(void*)0);
	}
	void RestoreSavedAnimSets()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RestoreSavedAnimSets, cast(void*)0, cast(void*)0);
	}
	float GetAnimRateByDuration(ScriptName AnimSeqName, float Duration)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		*cast(float*)&params[8] = Duration;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAnimRateByDuration, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	float GetAnimLength(ScriptName AnimSeqName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimSeqName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAnimLength, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	MorphTarget FindMorphTarget(ScriptName MorphTargetName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindMorphTarget, params.ptr, cast(void*)0);
		return *cast(MorphTarget*)&params[8];
	}
	AnimNode FindAnimNode(ScriptName InNodeName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InNodeName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindAnimNode, params.ptr, cast(void*)0);
		return *cast(AnimNode*)&params[8];
	}
	void AllAnimNodes(ScriptClass BaseClass, ref AnimNode Node)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(AnimNode*)&params[4] = Node;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllAnimNodes, params.ptr, cast(void*)0);
		Node = *cast(AnimNode*)&params[4];
	}
	SkelControlBase FindSkelControl(ScriptName InControlName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InControlName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSkelControl, params.ptr, cast(void*)0);
		return *cast(SkelControlBase*)&params[8];
	}
	MorphNodeBase FindMorphNode(ScriptName InNodeName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InNodeName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindMorphNode, params.ptr, cast(void*)0);
		return *cast(MorphNodeBase*)&params[8];
	}
	UObject.Quat GetBoneQuaternion(ScriptName BoneName, int* Space = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		if (Space !is null)
			*cast(int*)&params[8] = *Space;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoneQuaternion, params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)&params[16];
	}
	Vector GetBoneLocation(ScriptName BoneName, int* Space = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		if (Space !is null)
			*cast(int*)&params[8] = *Space;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoneLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	int MatchRefBone(ScriptName BoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.MatchRefBone, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	ScriptName GetBoneName(int BoneIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoneName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	UObject.Matrix GetBoneMatrix(int BoneIndex)
	{
		ubyte params[80];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoneMatrix, params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)&params[16];
	}
	ScriptName GetParentBone(ScriptName BoneName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetParentBone, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	void GetBoneNames(ref ScriptArray!(ScriptName) BoneNames)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptName)*)params.ptr = BoneNames;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoneNames, params.ptr, cast(void*)0);
		BoneNames = *cast(ScriptArray!(ScriptName)*)params.ptr;
	}
	bool BoneIsChildOf(ScriptName BoneName, ScriptName ParentBoneName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(ScriptName*)&params[8] = ParentBoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.BoneIsChildOf, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	Vector GetRefPosePosition(int BoneIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRefPosePosition, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetBoneAxis(ScriptName BoneName, UObject.EAxis Axis)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(UObject.EAxis*)&params[8] = Axis;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoneAxis, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	void TransformToBoneSpace(ScriptName BoneName, Vector InPosition, Rotator InRotation, ref Vector OutPosition, ref Rotator OutRotation)
	{
		ubyte params[56];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(Vector*)&params[8] = InPosition;
		*cast(Rotator*)&params[20] = InRotation;
		*cast(Vector*)&params[32] = OutPosition;
		*cast(Rotator*)&params[44] = OutRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.TransformToBoneSpace, params.ptr, cast(void*)0);
		OutPosition = *cast(Vector*)&params[32];
		OutRotation = *cast(Rotator*)&params[44];
	}
	void TransformFromBoneSpace(ScriptName BoneName, Vector InPosition, Rotator InRotation, ref Vector OutPosition, ref Rotator OutRotation)
	{
		ubyte params[56];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(Vector*)&params[8] = InPosition;
		*cast(Rotator*)&params[20] = InRotation;
		*cast(Vector*)&params[32] = OutPosition;
		*cast(Rotator*)&params[44] = OutRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.TransformFromBoneSpace, params.ptr, cast(void*)0);
		OutPosition = *cast(Vector*)&params[32];
		OutRotation = *cast(Rotator*)&params[44];
	}
	ScriptName FindClosestBone(Vector TestLocation, Vector* BoneLocation = null, float* IgnoreScale = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = TestLocation;
		if (BoneLocation !is null)
			*cast(Vector*)&params[12] = *BoneLocation;
		if (IgnoreScale !is null)
			*cast(float*)&params[24] = *IgnoreScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindClosestBone, params.ptr, cast(void*)0);
		if (BoneLocation !is null)
			*BoneLocation = *cast(Vector*)&params[12];
		return *cast(ScriptName*)&params[28];
	}
	Vector GetClosestCollidingBoneLocation(Vector TestLocation, bool bCheckZeroExtent, bool bCheckNonZeroExtent)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = TestLocation;
		*cast(bool*)&params[12] = bCheckZeroExtent;
		*cast(bool*)&params[16] = bCheckNonZeroExtent;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClosestCollidingBoneLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[20];
	}
	void SetAnimTreeTemplate(AnimTree NewTemplate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimTree*)params.ptr = NewTemplate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAnimTreeTemplate, params.ptr, cast(void*)0);
	}
	void SetParentAnimComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* NewParentAnimComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = NewParentAnimComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetParentAnimComponent, params.ptr, cast(void*)0);
	}
	void UpdateParentBoneMap()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateParentBoneMap, cast(void*)0, cast(void*)0);
	}
	void InitSkelControls()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitSkelControls, cast(void*)0, cast(void*)0);
	}
	void InitMorphTargets()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMorphTargets, cast(void*)0, cast(void*)0);
	}
	int FindConstraintIndex(ScriptName ConstraintName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ConstraintName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindConstraintIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	ScriptName FindConstraintBoneName(int ConstraintIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ConstraintIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindConstraintBoneName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	RB_BodyInstance FindBodyInstanceNamed(ScriptName BoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindBodyInstanceNamed, params.ptr, cast(void*)0);
		return *cast(RB_BodyInstance*)&params[8];
	}
	void SetHasPhysicsAssetInstance(bool bHasInstance)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHasInstance;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHasPhysicsAssetInstance, params.ptr, cast(void*)0);
	}
	void UpdateRBBonesFromSpaceBases(bool bMoveUnfixedBodies, bool bTeleport)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bMoveUnfixedBodies;
		*cast(bool*)&params[4] = bTeleport;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRBBonesFromSpaceBases, params.ptr, cast(void*)0);
	}
	void ForceSkelUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceSkelUpdate, cast(void*)0, cast(void*)0);
	}
	void UpdateAnimations()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateAnimations, cast(void*)0, cast(void*)0);
	}
	bool GetBonesWithinRadius(Vector Origin, float Radius, int TraceFlags, ref ScriptArray!(ScriptName) out_Bones)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(float*)&params[12] = Radius;
		*cast(int*)&params[16] = TraceFlags;
		*cast(ScriptArray!(ScriptName)*)&params[20] = out_Bones;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBonesWithinRadius, params.ptr, cast(void*)0);
		out_Bones = *cast(ScriptArray!(ScriptName)*)&params[20];
		return *cast(bool*)&params[32];
	}
	void AddInstanceVertexWeightBoneParented(ScriptName BoneName, bool* bPairWithParent = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		if (bPairWithParent !is null)
			*cast(bool*)&params[8] = *bPairWithParent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddInstanceVertexWeightBoneParented, params.ptr, cast(void*)0);
	}
	void RemoveInstanceVertexWeightBoneParented(ScriptName BoneName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveInstanceVertexWeightBoneParented, params.ptr, cast(void*)0);
	}
	int FindInstanceVertexweightBonePair(SkeletalMeshComponent.BonePair Bones)
	{
		ubyte params[20];
		params[] = 0;
		*cast(SkeletalMeshComponent.BonePair*)params.ptr = Bones;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindInstanceVertexweightBonePair, params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	void UpdateInstanceVertexWeightBones(ScriptArray!(SkeletalMeshComponent.BonePair) BonePairs)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(SkeletalMeshComponent.BonePair)*)params.ptr = BonePairs;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateInstanceVertexWeightBones, params.ptr, cast(void*)0);
	}
	void ToggleInstanceVertexWeights(bool bEnable, int LODIdx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		*cast(int*)&params[4] = LODIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleInstanceVertexWeights, params.ptr, cast(void*)0);
	}
	bool PlayFaceFXAnim(FaceFXAnimSet FaceFXAnimSetRef, ScriptString AnimName, ScriptString GroupName, SoundCue SoundCueToPlay)
	{
		ubyte params[36];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = FaceFXAnimSetRef;
		*cast(ScriptString*)&params[4] = AnimName;
		*cast(ScriptString*)&params[16] = GroupName;
		*cast(SoundCue*)&params[28] = SoundCueToPlay;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFaceFXAnim, params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	void StopFaceFXAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFaceFXAnim, cast(void*)0, cast(void*)0);
	}
	bool IsPlayingFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPlayingFaceFXAnim, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void DeclareFaceFXRegister(ScriptString RegName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = RegName;
		(cast(ScriptObject)this).ProcessEvent(Functions.DeclareFaceFXRegister, params.ptr, cast(void*)0);
	}
	float GetFaceFXRegister(ScriptString RegName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = RegName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFaceFXRegister, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void SetFaceFXRegister(ScriptString RegName, float RegVal, SkeletalMeshComponent.EFaceFXRegOp RegOp, float* InterpDuration = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = RegName;
		*cast(float*)&params[12] = RegVal;
		*cast(SkeletalMeshComponent.EFaceFXRegOp*)&params[16] = RegOp;
		if (InterpDuration !is null)
			*cast(float*)&params[20] = *InterpDuration;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFaceFXRegister, params.ptr, cast(void*)0);
	}
	void SetFaceFXRegisterEx(ScriptString RegName, SkeletalMeshComponent.EFaceFXRegOp RegOp, float FirstValue, float FirstInterpDuration, float NextValue, float NextInterpDuration)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = RegName;
		*cast(SkeletalMeshComponent.EFaceFXRegOp*)&params[12] = RegOp;
		*cast(float*)&params[16] = FirstValue;
		*cast(float*)&params[20] = FirstInterpDuration;
		*cast(float*)&params[24] = NextValue;
		*cast(float*)&params[28] = NextInterpDuration;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFaceFXRegisterEx, params.ptr, cast(void*)0);
	}
	void HideBone(int BoneIndex, SkeletalMeshComponent.EPhysBodyOp PhysBodyOption)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		*cast(SkeletalMeshComponent.EPhysBodyOp*)&params[4] = PhysBodyOption;
		(cast(ScriptObject)this).ProcessEvent(Functions.HideBone, params.ptr, cast(void*)0);
	}
	void UnHideBone(int BoneIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnHideBone, params.ptr, cast(void*)0);
	}
	bool IsBoneHidden(int BoneIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = BoneIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsBoneHidden, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void HideBoneByName(ScriptName BoneName, SkeletalMeshComponent.EPhysBodyOp PhysBodyOption)
	{
		ubyte params[9];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		*cast(SkeletalMeshComponent.EPhysBodyOp*)&params[8] = PhysBodyOption;
		(cast(ScriptObject)this).ProcessEvent(Functions.HideBoneByName, params.ptr, cast(void*)0);
	}
	void UnHideBoneByName(ScriptName BoneName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnHideBoneByName, params.ptr, cast(void*)0);
	}
	void UpdateMeshForBrokenConstraints()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateMeshForBrokenConstraints, cast(void*)0, cast(void*)0);
	}
	void ShowMaterialSection(int MaterialID, bool bShow, int LODIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = MaterialID;
		*cast(bool*)&params[4] = bShow;
		*cast(int*)&params[8] = LODIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMaterialSection, params.ptr, cast(void*)0);
	}
	void PlayAnim(ScriptName AnimName, float* Duration = null, bool* bLoop = null, bool* bRestartIfAlreadyPlaying = null, float* StartTime = null, bool* bPlayBackwards = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = AnimName;
		if (Duration !is null)
			*cast(float*)&params[8] = *Duration;
		if (bLoop !is null)
			*cast(bool*)&params[12] = *bLoop;
		if (bRestartIfAlreadyPlaying !is null)
			*cast(bool*)&params[16] = *bRestartIfAlreadyPlaying;
		if (StartTime !is null)
			*cast(float*)&params[20] = *StartTime;
		if (bPlayBackwards !is null)
			*cast(bool*)&params[24] = *bPlayBackwards;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAnim, params.ptr, cast(void*)0);
	}
	void StopAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopAnim, cast(void*)0, cast(void*)0);
	}
	bool CreateForceField(in AnimNotify_ForceField AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_ForceField*)params.ptr = cast(AnimNotify_ForceField)AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateForceField, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool PlayParticleEffect(in AnimNotify_PlayParticleEffect AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_PlayParticleEffect*)params.ptr = cast(AnimNotify_PlayParticleEffect)AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayParticleEffect, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SkelMeshCompOnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SkelMeshCompOnParticleSystemFinished, params.ptr, cast(void*)0);
	}
	void BreakConstraint(Vector Impulse, Vector HitLocation, ScriptName InBoneName, bool* bVelChange = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = Impulse;
		*cast(Vector*)&params[12] = HitLocation;
		*cast(ScriptName*)&params[24] = InBoneName;
		if (bVelChange !is null)
			*cast(bool*)&params[32] = *bVelChange;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakConstraint, params.ptr, cast(void*)0);
	}
}
