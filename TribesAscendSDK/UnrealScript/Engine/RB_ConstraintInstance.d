module UnrealScript.Engine.RB_ConstraintInstance;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.RB_ConstraintSetup;
import UnrealScript.Engine.PhysicsAssetInstance;

extern(C++) interface RB_ConstraintInstance : UObject
{
	public @property final bool bTerminated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1000) != 0; }
	public @property final bool bTerminated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1000; } return val; }
	public @property final auto ref int ConstraintIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref UObject.Pointer DummyKinActor() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float AngularDriveForceLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float AngularDriveDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float AngularDriveSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref Vector AngularVelocityTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref UObject.Quat AngularPositionTarget() { return *cast(UObject.Quat*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float LinearDriveForceLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float LinearDriveDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float LinearDriveSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref Vector LinearVelocityTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref Vector LinearPositionTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref UObject.Pointer ConstraintData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 80); }
	public @property final bool bAngularSlerpDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x800) != 0; }
	public @property final bool bAngularSlerpDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x800; } return val; }
	public @property final bool bTwistVelocityDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x400) != 0; }
	public @property final bool bTwistVelocityDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x400; } return val; }
	public @property final bool bTwistPositionDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x200) != 0; }
	public @property final bool bTwistPositionDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x200; } return val; }
	public @property final bool bSwingVelocityDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x100) != 0; }
	public @property final bool bSwingVelocityDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x100; } return val; }
	public @property final bool bSwingPositionDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x80) != 0; }
	public @property final bool bSwingPositionDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x80; } return val; }
	public @property final bool bLinearZVelocityDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x40) != 0; }
	public @property final bool bLinearZVelocityDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x40; } return val; }
	public @property final bool bLinearZPositionDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x20) != 0; }
	public @property final bool bLinearZPositionDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x20; } return val; }
	public @property final bool bLinearYVelocityDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x10) != 0; }
	public @property final bool bLinearYVelocityDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x10; } return val; }
	public @property final bool bLinearYPositionDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x8) != 0; }
	public @property final bool bLinearYPositionDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x8; } return val; }
	public @property final bool bLinearXVelocityDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x4) != 0; }
	public @property final bool bLinearXVelocityDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x4; } return val; }
	public @property final bool bLinearXPositionDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
	public @property final bool bLinearXPositionDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
	public @property final bool bInHardware() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
	public @property final bool bInHardware(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	public @property final auto ref int SceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref Actor Owner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 60); }
	final void TermConstraint()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7327], cast(void*)0, cast(void*)0);
	}
	final void InitConstraint(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* PrimComp1, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* PrimComp2, RB_ConstraintSetup Setup, float Scale, Actor InOwner, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* InPrimComp, bool bMakeKinForBody1)
	{
		ubyte params[28];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = PrimComp1;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = PrimComp2;
		*cast(RB_ConstraintSetup*)&params[8] = Setup;
		*cast(float*)&params[12] = Scale;
		*cast(Actor*)&params[16] = InOwner;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[20] = InPrimComp;
		*cast(bool*)&params[24] = bMakeKinForBody1;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25083], params.ptr, cast(void*)0);
	}
	final PhysicsAssetInstance GetPhysicsAssetInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25091], params.ptr, cast(void*)0);
		return *cast(PhysicsAssetInstance*)params.ptr;
	}
	final Vector GetConstraintLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25093], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final void SetLinearPositionDrive(bool bEnableXDrive, bool bEnableYDrive, bool bEnableZDrive)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableXDrive;
		*cast(bool*)&params[4] = bEnableYDrive;
		*cast(bool*)&params[8] = bEnableZDrive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25095], params.ptr, cast(void*)0);
	}
	final void SetLinearVelocityDrive(bool bEnableXDrive, bool bEnableYDrive, bool bEnableZDrive)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableXDrive;
		*cast(bool*)&params[4] = bEnableYDrive;
		*cast(bool*)&params[8] = bEnableZDrive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25099], params.ptr, cast(void*)0);
	}
	final void SetAngularPositionDrive(bool bEnableSwingDrive, bool bEnableTwistDrive)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableSwingDrive;
		*cast(bool*)&params[4] = bEnableTwistDrive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25103], params.ptr, cast(void*)0);
	}
	final void SetAngularVelocityDrive(bool bEnableSwingDrive, bool bEnableTwistDrive)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableSwingDrive;
		*cast(bool*)&params[4] = bEnableTwistDrive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25106], params.ptr, cast(void*)0);
	}
	final void SetLinearPositionTarget(Vector InPosTarget)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = InPosTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25109], params.ptr, cast(void*)0);
	}
	final void SetLinearVelocityTarget(Vector InVelTarget)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = InVelTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25111], params.ptr, cast(void*)0);
	}
	final void SetLinearDriveParams(float InSpring, float InDamping, float InForceLimit)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InSpring;
		*cast(float*)&params[4] = InDamping;
		*cast(float*)&params[8] = InForceLimit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25113], params.ptr, cast(void*)0);
	}
	final void SetAngularPositionTarget(UObject.Quat* InPosTarget)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = *InPosTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25117], params.ptr, cast(void*)0);
		*InPosTarget = *cast(UObject.Quat*)params.ptr;
	}
	final void SetAngularVelocityTarget(Vector InVelTarget)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = InVelTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25119], params.ptr, cast(void*)0);
	}
	final void SetAngularDriveParams(float InSpring, float InDamping, float InForceLimit)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InSpring;
		*cast(float*)&params[4] = InDamping;
		*cast(float*)&params[8] = InForceLimit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25121], params.ptr, cast(void*)0);
	}
	final void SetAngularDOFLimitScale(float InSwing1LimitScale, float InSwing2LimitScale, float InTwistLimitScale, RB_ConstraintSetup InSetup)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = InSwing1LimitScale;
		*cast(float*)&params[4] = InSwing2LimitScale;
		*cast(float*)&params[8] = InTwistLimitScale;
		*cast(RB_ConstraintSetup*)&params[12] = InSetup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25125], params.ptr, cast(void*)0);
	}
	final void SetLinearLimitSize(float NewLimitSize)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewLimitSize;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25130], params.ptr, cast(void*)0);
	}
	final void MoveKinActorTransform(UObject.Matrix* NewTM)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = *NewTM;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25132], params.ptr, cast(void*)0);
		*NewTM = *cast(UObject.Matrix*)params.ptr;
	}
}
