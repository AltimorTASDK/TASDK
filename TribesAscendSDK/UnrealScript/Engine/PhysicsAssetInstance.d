module UnrealScript.Engine.PhysicsAssetInstance;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.RB_ConstraintInstance;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.RB_BodyInstance;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface PhysicsAssetInstance : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PhysicsAssetInstance")); }
	private static __gshared PhysicsAssetInstance mDefaultProperties;
	@property final static PhysicsAssetInstance DefaultProperties() { mixin(MGDPC("PhysicsAssetInstance", "PhysicsAssetInstance Engine.Default__PhysicsAssetInstance")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetLinearDriveScale;
			ScriptFunction mSetAngularDriveScale;
			ScriptFunction mGetTotalMassBelowBone;
			ScriptFunction mSetAllBodiesFixed;
			ScriptFunction mSetNamedBodiesFixed;
			ScriptFunction mForceAllBodiesBelowUnfixed;
			ScriptFunction mSetAllMotorsAngularPositionDrive;
			ScriptFunction mSetAllMotorsAngularVelocityDrive;
			ScriptFunction mSetAllMotorsAngularDriveParams;
			ScriptFunction mSetNamedMotorsAngularPositionDrive;
			ScriptFunction mSetNamedMotorsAngularVelocityDrive;
			ScriptFunction mSetNamedRBBoneSprings;
			ScriptFunction mSetNamedBodiesBlockRigidBody;
			ScriptFunction mSetFullAnimWeightBlockRigidBody;
			ScriptFunction mSetFullAnimWeightBonesFixed;
			ScriptFunction mFindBodyInstance;
			ScriptFunction mFindConstraintInstance;
		}
		public @property static final
		{
			ScriptFunction SetLinearDriveScale() { mixin(MGF("mSetLinearDriveScale", "Function Engine.PhysicsAssetInstance.SetLinearDriveScale")); }
			ScriptFunction SetAngularDriveScale() { mixin(MGF("mSetAngularDriveScale", "Function Engine.PhysicsAssetInstance.SetAngularDriveScale")); }
			ScriptFunction GetTotalMassBelowBone() { mixin(MGF("mGetTotalMassBelowBone", "Function Engine.PhysicsAssetInstance.GetTotalMassBelowBone")); }
			ScriptFunction SetAllBodiesFixed() { mixin(MGF("mSetAllBodiesFixed", "Function Engine.PhysicsAssetInstance.SetAllBodiesFixed")); }
			ScriptFunction SetNamedBodiesFixed() { mixin(MGF("mSetNamedBodiesFixed", "Function Engine.PhysicsAssetInstance.SetNamedBodiesFixed")); }
			ScriptFunction ForceAllBodiesBelowUnfixed() { mixin(MGF("mForceAllBodiesBelowUnfixed", "Function Engine.PhysicsAssetInstance.ForceAllBodiesBelowUnfixed")); }
			ScriptFunction SetAllMotorsAngularPositionDrive() { mixin(MGF("mSetAllMotorsAngularPositionDrive", "Function Engine.PhysicsAssetInstance.SetAllMotorsAngularPositionDrive")); }
			ScriptFunction SetAllMotorsAngularVelocityDrive() { mixin(MGF("mSetAllMotorsAngularVelocityDrive", "Function Engine.PhysicsAssetInstance.SetAllMotorsAngularVelocityDrive")); }
			ScriptFunction SetAllMotorsAngularDriveParams() { mixin(MGF("mSetAllMotorsAngularDriveParams", "Function Engine.PhysicsAssetInstance.SetAllMotorsAngularDriveParams")); }
			ScriptFunction SetNamedMotorsAngularPositionDrive() { mixin(MGF("mSetNamedMotorsAngularPositionDrive", "Function Engine.PhysicsAssetInstance.SetNamedMotorsAngularPositionDrive")); }
			ScriptFunction SetNamedMotorsAngularVelocityDrive() { mixin(MGF("mSetNamedMotorsAngularVelocityDrive", "Function Engine.PhysicsAssetInstance.SetNamedMotorsAngularVelocityDrive")); }
			ScriptFunction SetNamedRBBoneSprings() { mixin(MGF("mSetNamedRBBoneSprings", "Function Engine.PhysicsAssetInstance.SetNamedRBBoneSprings")); }
			ScriptFunction SetNamedBodiesBlockRigidBody() { mixin(MGF("mSetNamedBodiesBlockRigidBody", "Function Engine.PhysicsAssetInstance.SetNamedBodiesBlockRigidBody")); }
			ScriptFunction SetFullAnimWeightBlockRigidBody() { mixin(MGF("mSetFullAnimWeightBlockRigidBody", "Function Engine.PhysicsAssetInstance.SetFullAnimWeightBlockRigidBody")); }
			ScriptFunction SetFullAnimWeightBonesFixed() { mixin(MGF("mSetFullAnimWeightBonesFixed", "Function Engine.PhysicsAssetInstance.SetFullAnimWeightBonesFixed")); }
			ScriptFunction FindBodyInstance() { mixin(MGF("mFindBodyInstance", "Function Engine.PhysicsAssetInstance.FindBodyInstance")); }
			ScriptFunction FindConstraintInstance() { mixin(MGF("mFindConstraintInstance", "Function Engine.PhysicsAssetInstance.FindConstraintInstance")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(RB_ConstraintInstance) Constraints() { mixin(MGPC("ScriptArray!(RB_ConstraintInstance)", 80)); }
			ScriptArray!(RB_BodyInstance) Bodies() { mixin(MGPC("ScriptArray!(RB_BodyInstance)", 68)); }
			float AngularForceLimitScale() { mixin(MGPC("float", 172)); }
			float AngularDampingScale() { mixin(MGPC("float", 168)); }
			float AngularSpringScale() { mixin(MGPC("float", 164)); }
			float LinearForceLimitScale() { mixin(MGPC("float", 160)); }
			float LinearDampingScale() { mixin(MGPC("float", 156)); }
			float LinearSpringScale() { mixin(MGPC("float", 152)); }
			UObject.Map_Mirror CollisionDisableTable() { mixin(MGPC("UObject.Map_Mirror", 92)); }
			int RootBodyIndex() { mixin(MGPC("int", 64)); }
			Actor Owner() { mixin(MGPC("Actor", 60)); }
		}
		bool bInitBodies() { mixin(MGBPC(176, 0x1)); }
		bool bInitBodies(bool val) { mixin(MSBPC(176, 0x1)); }
	}
final:
	void SetLinearDriveScale(float InLinearSpringScale, float InLinearDampingScale, float InLinearForceLimitScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InLinearSpringScale;
		*cast(float*)&params[4] = InLinearDampingScale;
		*cast(float*)&params[8] = InLinearForceLimitScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLinearDriveScale, params.ptr, cast(void*)0);
	}
	void SetAngularDriveScale(float InAngularSpringScale, float InAngularDampingScale, float InAngularForceLimitScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InAngularSpringScale;
		*cast(float*)&params[4] = InAngularDampingScale;
		*cast(float*)&params[8] = InAngularForceLimitScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAngularDriveScale, params.ptr, cast(void*)0);
	}
	float GetTotalMassBelowBone(ScriptName InBoneName, PhysicsAsset InAsset, SkeletalMesh InSkelMesh)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InBoneName;
		*cast(PhysicsAsset*)&params[8] = InAsset;
		*cast(SkeletalMesh*)&params[12] = InSkelMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTotalMassBelowBone, params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	void SetAllBodiesFixed(bool bNewFixed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFixed;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAllBodiesFixed, params.ptr, cast(void*)0);
	}
	void SetNamedBodiesFixed(bool bNewFixed, ScriptArray!(ScriptName) BoneNames, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh, bool* bSetOtherBodiesToComplement = null, bool* bSkipFullAnimWeightBodies = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFixed;
		*cast(ScriptArray!(ScriptName)*)&params[4] = BoneNames;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = SkelMesh;
		if (bSetOtherBodiesToComplement !is null)
			*cast(bool*)&params[20] = *bSetOtherBodiesToComplement;
		if (bSkipFullAnimWeightBodies !is null)
			*cast(bool*)&params[24] = *bSkipFullAnimWeightBodies;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNamedBodiesFixed, params.ptr, cast(void*)0);
	}
	void ForceAllBodiesBelowUnfixed(ref in ScriptName InBoneName, PhysicsAsset InAsset, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* InSkelMesh, bool InbInstanceAlwaysFullAnimWeight)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = cast(ScriptName)InBoneName;
		*cast(PhysicsAsset*)&params[8] = InAsset;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[12] = InSkelMesh;
		*cast(bool*)&params[16] = InbInstanceAlwaysFullAnimWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceAllBodiesBelowUnfixed, params.ptr, cast(void*)0);
	}
	void SetAllMotorsAngularPositionDrive(bool bEnableSwingDrive, bool bEnableTwistDrive, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void** SkelMesh = null, bool* bSkipFullAnimWeightBodies = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableSwingDrive;
		*cast(bool*)&params[4] = bEnableTwistDrive;
		if (SkelMesh !is null)
			*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[8] = *SkelMesh;
		if (bSkipFullAnimWeightBodies !is null)
			*cast(bool*)&params[12] = *bSkipFullAnimWeightBodies;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAllMotorsAngularPositionDrive, params.ptr, cast(void*)0);
	}
	void SetAllMotorsAngularVelocityDrive(bool bEnableSwingDrive, bool bEnableTwistDrive, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMeshComp, bool* bSkipFullAnimWeightBodies = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableSwingDrive;
		*cast(bool*)&params[4] = bEnableTwistDrive;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[8] = SkelMeshComp;
		if (bSkipFullAnimWeightBodies !is null)
			*cast(bool*)&params[12] = *bSkipFullAnimWeightBodies;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAllMotorsAngularVelocityDrive, params.ptr, cast(void*)0);
	}
	void SetAllMotorsAngularDriveParams(float InSpring, float InDamping, float InForceLimit, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void** SkelMesh = null, bool* bSkipFullAnimWeightBodies = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = InSpring;
		*cast(float*)&params[4] = InDamping;
		*cast(float*)&params[8] = InForceLimit;
		if (SkelMesh !is null)
			*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[12] = *SkelMesh;
		if (bSkipFullAnimWeightBodies !is null)
			*cast(bool*)&params[16] = *bSkipFullAnimWeightBodies;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAllMotorsAngularDriveParams, params.ptr, cast(void*)0);
	}
	void SetNamedMotorsAngularPositionDrive(bool bEnableSwingDrive, bool bEnableTwistDrive, ScriptArray!(ScriptName) BoneNames, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMeshComp, bool* bSetOtherBodiesToComplement = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableSwingDrive;
		*cast(bool*)&params[4] = bEnableTwistDrive;
		*cast(ScriptArray!(ScriptName)*)&params[8] = BoneNames;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[20] = SkelMeshComp;
		if (bSetOtherBodiesToComplement !is null)
			*cast(bool*)&params[24] = *bSetOtherBodiesToComplement;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNamedMotorsAngularPositionDrive, params.ptr, cast(void*)0);
	}
	void SetNamedMotorsAngularVelocityDrive(bool bEnableSwingDrive, bool bEnableTwistDrive, ScriptArray!(ScriptName) BoneNames, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMeshComp, bool* bSetOtherBodiesToComplement = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableSwingDrive;
		*cast(bool*)&params[4] = bEnableTwistDrive;
		*cast(ScriptArray!(ScriptName)*)&params[8] = BoneNames;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[20] = SkelMeshComp;
		if (bSetOtherBodiesToComplement !is null)
			*cast(bool*)&params[24] = *bSetOtherBodiesToComplement;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNamedMotorsAngularVelocityDrive, params.ptr, cast(void*)0);
	}
	void SetNamedRBBoneSprings(bool bEnable, ScriptArray!(ScriptName) BoneNames, float InBoneLinearSpring, float InBoneAngularSpring, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMeshComp)
	{
		ubyte params[28];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		*cast(ScriptArray!(ScriptName)*)&params[4] = BoneNames;
		*cast(float*)&params[16] = InBoneLinearSpring;
		*cast(float*)&params[20] = InBoneAngularSpring;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[24] = SkelMeshComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNamedRBBoneSprings, params.ptr, cast(void*)0);
	}
	void SetNamedBodiesBlockRigidBody(bool bNewBlockRigidBody, ScriptArray!(ScriptName) BoneNames, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBlockRigidBody;
		*cast(ScriptArray!(ScriptName)*)&params[4] = BoneNames;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNamedBodiesBlockRigidBody, params.ptr, cast(void*)0);
	}
	void SetFullAnimWeightBlockRigidBody(bool bNewBlockRigidBody, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBlockRigidBody;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFullAnimWeightBlockRigidBody, params.ptr, cast(void*)0);
	}
	void SetFullAnimWeightBonesFixed(bool bNewFixed, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFixed;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFullAnimWeightBonesFixed, params.ptr, cast(void*)0);
	}
	RB_BodyInstance FindBodyInstance(ScriptName BodyName, PhysicsAsset InAsset)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BodyName;
		*cast(PhysicsAsset*)&params[8] = InAsset;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindBodyInstance, params.ptr, cast(void*)0);
		return *cast(RB_BodyInstance*)&params[12];
	}
	RB_ConstraintInstance FindConstraintInstance(ScriptName ConName, PhysicsAsset InAsset)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ConName;
		*cast(PhysicsAsset*)&params[8] = InAsset;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindConstraintInstance, params.ptr, cast(void*)0);
		return *cast(RB_ConstraintInstance*)&params[12];
	}
}
