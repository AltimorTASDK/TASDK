module UnrealScript.Engine.PhysicsAssetInstance;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.RB_ConstraintInstance;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.RB_BodyInstance;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface PhysicsAssetInstance : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(RB_ConstraintInstance) Constraints() { return *cast(ScriptArray!(RB_ConstraintInstance)*)(cast(size_t)cast(void*)this + 80); }
			ScriptArray!(RB_BodyInstance) Bodies() { return *cast(ScriptArray!(RB_BodyInstance)*)(cast(size_t)cast(void*)this + 68); }
			float AngularForceLimitScale() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
			float AngularDampingScale() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float AngularSpringScale() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float LinearForceLimitScale() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			float LinearDampingScale() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			float LinearSpringScale() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			UObject.Map_Mirror CollisionDisableTable() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 92); }
			int RootBodyIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			Actor Owner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bInitBodies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 176) & 0x1) != 0; }
		bool bInitBodies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 176) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 176) &= ~0x1; } return val; }
	}
final:
	void SetLinearDriveScale(float InLinearSpringScale, float InLinearDampingScale, float InLinearForceLimitScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InLinearSpringScale;
		*cast(float*)&params[4] = InLinearDampingScale;
		*cast(float*)&params[8] = InLinearForceLimitScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24353], params.ptr, cast(void*)0);
	}
	void SetAngularDriveScale(float InAngularSpringScale, float InAngularDampingScale, float InAngularForceLimitScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InAngularSpringScale;
		*cast(float*)&params[4] = InAngularDampingScale;
		*cast(float*)&params[8] = InAngularForceLimitScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24357], params.ptr, cast(void*)0);
	}
	float GetTotalMassBelowBone(ScriptName InBoneName, PhysicsAsset InAsset, SkeletalMesh InSkelMesh)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InBoneName;
		*cast(PhysicsAsset*)&params[8] = InAsset;
		*cast(SkeletalMesh*)&params[12] = InSkelMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24361], params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	void SetAllBodiesFixed(bool bNewFixed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFixed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24366], params.ptr, cast(void*)0);
	}
	void SetNamedBodiesFixed(bool bNewFixed, ScriptArray!(ScriptName) BoneNames, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh, bool bSetOtherBodiesToComplement, bool bSkipFullAnimWeightBodies)
	{
		ubyte params[28];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFixed;
		*cast(ScriptArray!(ScriptName)*)&params[4] = BoneNames;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = SkelMesh;
		*cast(bool*)&params[20] = bSetOtherBodiesToComplement;
		*cast(bool*)&params[24] = bSkipFullAnimWeightBodies;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24368], params.ptr, cast(void*)0);
	}
	void ForceAllBodiesBelowUnfixed(ScriptName* InBoneName, PhysicsAsset InAsset, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* InSkelMesh, bool InbInstanceAlwaysFullAnimWeight)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = *InBoneName;
		*cast(PhysicsAsset*)&params[8] = InAsset;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[12] = InSkelMesh;
		*cast(bool*)&params[16] = InbInstanceAlwaysFullAnimWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24375], params.ptr, cast(void*)0);
		*InBoneName = *cast(ScriptName*)params.ptr;
	}
	void SetAllMotorsAngularPositionDrive(bool bEnableSwingDrive, bool bEnableTwistDrive, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh, bool bSkipFullAnimWeightBodies)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableSwingDrive;
		*cast(bool*)&params[4] = bEnableTwistDrive;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[8] = SkelMesh;
		*cast(bool*)&params[12] = bSkipFullAnimWeightBodies;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24380], params.ptr, cast(void*)0);
	}
	void SetAllMotorsAngularVelocityDrive(bool bEnableSwingDrive, bool bEnableTwistDrive, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMeshComp, bool bSkipFullAnimWeightBodies)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableSwingDrive;
		*cast(bool*)&params[4] = bEnableTwistDrive;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[8] = SkelMeshComp;
		*cast(bool*)&params[12] = bSkipFullAnimWeightBodies;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24385], params.ptr, cast(void*)0);
	}
	void SetAllMotorsAngularDriveParams(float InSpring, float InDamping, float InForceLimit, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMesh, bool bSkipFullAnimWeightBodies)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = InSpring;
		*cast(float*)&params[4] = InDamping;
		*cast(float*)&params[8] = InForceLimit;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[12] = SkelMesh;
		*cast(bool*)&params[16] = bSkipFullAnimWeightBodies;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24390], params.ptr, cast(void*)0);
	}
	void SetNamedMotorsAngularPositionDrive(bool bEnableSwingDrive, bool bEnableTwistDrive, ScriptArray!(ScriptName) BoneNames, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMeshComp, bool bSetOtherBodiesToComplement)
	{
		ubyte params[28];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableSwingDrive;
		*cast(bool*)&params[4] = bEnableTwistDrive;
		*cast(ScriptArray!(ScriptName)*)&params[8] = BoneNames;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[20] = SkelMeshComp;
		*cast(bool*)&params[24] = bSetOtherBodiesToComplement;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24396], params.ptr, cast(void*)0);
	}
	void SetNamedMotorsAngularVelocityDrive(bool bEnableSwingDrive, bool bEnableTwistDrive, ScriptArray!(ScriptName) BoneNames, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelMeshComp, bool bSetOtherBodiesToComplement)
	{
		ubyte params[28];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableSwingDrive;
		*cast(bool*)&params[4] = bEnableTwistDrive;
		*cast(ScriptArray!(ScriptName)*)&params[8] = BoneNames;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[20] = SkelMeshComp;
		*cast(bool*)&params[24] = bSetOtherBodiesToComplement;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24403], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24410], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24417], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24422], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24425], params.ptr, cast(void*)0);
	}
	RB_BodyInstance FindBodyInstance(ScriptName BodyName, PhysicsAsset InAsset)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BodyName;
		*cast(PhysicsAsset*)&params[8] = InAsset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24428], params.ptr, cast(void*)0);
		return *cast(RB_BodyInstance*)&params[12];
	}
	RB_ConstraintInstance FindConstraintInstance(ScriptName ConName, PhysicsAsset InAsset)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ConName;
		*cast(PhysicsAsset*)&params[8] = InAsset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24432], params.ptr, cast(void*)0);
		return *cast(RB_ConstraintInstance*)&params[12];
	}
}
