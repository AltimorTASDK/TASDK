module UnrealScript.Engine.RB_ConstraintInstance;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.RB_ConstraintSetup;
import UnrealScript.Engine.PhysicsAssetInstance;

extern(C++) interface RB_ConstraintInstance : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_ConstraintInstance")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTermConstraint;
			ScriptFunction mInitConstraint;
			ScriptFunction mGetPhysicsAssetInstance;
			ScriptFunction mGetConstraintLocation;
			ScriptFunction mSetLinearPositionDrive;
			ScriptFunction mSetLinearVelocityDrive;
			ScriptFunction mSetAngularPositionDrive;
			ScriptFunction mSetAngularVelocityDrive;
			ScriptFunction mSetLinearPositionTarget;
			ScriptFunction mSetLinearVelocityTarget;
			ScriptFunction mSetLinearDriveParams;
			ScriptFunction mSetAngularPositionTarget;
			ScriptFunction mSetAngularVelocityTarget;
			ScriptFunction mSetAngularDriveParams;
			ScriptFunction mSetAngularDOFLimitScale;
			ScriptFunction mSetLinearLimitSize;
			ScriptFunction mMoveKinActorTransform;
		}
		public @property static final
		{
			ScriptFunction TermConstraint() { return mTermConstraint ? mTermConstraint : (mTermConstraint = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.TermConstraint")); }
			ScriptFunction InitConstraint() { return mInitConstraint ? mInitConstraint : (mInitConstraint = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.InitConstraint")); }
			ScriptFunction GetPhysicsAssetInstance() { return mGetPhysicsAssetInstance ? mGetPhysicsAssetInstance : (mGetPhysicsAssetInstance = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.GetPhysicsAssetInstance")); }
			ScriptFunction GetConstraintLocation() { return mGetConstraintLocation ? mGetConstraintLocation : (mGetConstraintLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.GetConstraintLocation")); }
			ScriptFunction SetLinearPositionDrive() { return mSetLinearPositionDrive ? mSetLinearPositionDrive : (mSetLinearPositionDrive = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.SetLinearPositionDrive")); }
			ScriptFunction SetLinearVelocityDrive() { return mSetLinearVelocityDrive ? mSetLinearVelocityDrive : (mSetLinearVelocityDrive = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.SetLinearVelocityDrive")); }
			ScriptFunction SetAngularPositionDrive() { return mSetAngularPositionDrive ? mSetAngularPositionDrive : (mSetAngularPositionDrive = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.SetAngularPositionDrive")); }
			ScriptFunction SetAngularVelocityDrive() { return mSetAngularVelocityDrive ? mSetAngularVelocityDrive : (mSetAngularVelocityDrive = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.SetAngularVelocityDrive")); }
			ScriptFunction SetLinearPositionTarget() { return mSetLinearPositionTarget ? mSetLinearPositionTarget : (mSetLinearPositionTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.SetLinearPositionTarget")); }
			ScriptFunction SetLinearVelocityTarget() { return mSetLinearVelocityTarget ? mSetLinearVelocityTarget : (mSetLinearVelocityTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.SetLinearVelocityTarget")); }
			ScriptFunction SetLinearDriveParams() { return mSetLinearDriveParams ? mSetLinearDriveParams : (mSetLinearDriveParams = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.SetLinearDriveParams")); }
			ScriptFunction SetAngularPositionTarget() { return mSetAngularPositionTarget ? mSetAngularPositionTarget : (mSetAngularPositionTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.SetAngularPositionTarget")); }
			ScriptFunction SetAngularVelocityTarget() { return mSetAngularVelocityTarget ? mSetAngularVelocityTarget : (mSetAngularVelocityTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.SetAngularVelocityTarget")); }
			ScriptFunction SetAngularDriveParams() { return mSetAngularDriveParams ? mSetAngularDriveParams : (mSetAngularDriveParams = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.SetAngularDriveParams")); }
			ScriptFunction SetAngularDOFLimitScale() { return mSetAngularDOFLimitScale ? mSetAngularDOFLimitScale : (mSetAngularDOFLimitScale = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.SetAngularDOFLimitScale")); }
			ScriptFunction SetLinearLimitSize() { return mSetLinearLimitSize ? mSetLinearLimitSize : (mSetLinearLimitSize = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.SetLinearLimitSize")); }
			ScriptFunction MoveKinActorTransform() { return mMoveKinActorTransform ? mMoveKinActorTransform : (mMoveKinActorTransform = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_ConstraintInstance.MoveKinActorTransform")); }
		}
	}
	@property final
	{
		auto ref
		{
			int ConstraintIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
			UObject.Pointer DummyKinActor() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 168); }
			float AngularDriveForceLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float AngularDriveDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			float AngularDriveSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			Vector AngularVelocityTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 144); }
			UObject.Quat AngularPositionTarget() { return *cast(UObject.Quat*)(cast(size_t)cast(void*)this + 128); }
			float LinearDriveForceLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float LinearDriveDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float LinearDriveSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			Vector LinearVelocityTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
			Vector LinearPositionTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
			UObject.Pointer ConstraintData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 80); }
			int SceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
			Actor Owner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bTerminated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1000) != 0; }
		bool bTerminated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1000; } return val; }
		bool bAngularSlerpDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x800) != 0; }
		bool bAngularSlerpDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x800; } return val; }
		bool bTwistVelocityDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x400) != 0; }
		bool bTwistVelocityDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x400; } return val; }
		bool bTwistPositionDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x200) != 0; }
		bool bTwistPositionDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x200; } return val; }
		bool bSwingVelocityDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x100) != 0; }
		bool bSwingVelocityDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x100; } return val; }
		bool bSwingPositionDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x80) != 0; }
		bool bSwingPositionDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x80; } return val; }
		bool bLinearZVelocityDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x40) != 0; }
		bool bLinearZVelocityDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x40; } return val; }
		bool bLinearZPositionDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x20) != 0; }
		bool bLinearZPositionDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x20; } return val; }
		bool bLinearYVelocityDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x10) != 0; }
		bool bLinearYVelocityDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x10; } return val; }
		bool bLinearYPositionDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x8) != 0; }
		bool bLinearYPositionDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x8; } return val; }
		bool bLinearXVelocityDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x4) != 0; }
		bool bLinearXVelocityDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x4; } return val; }
		bool bLinearXPositionDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
		bool bLinearXPositionDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
		bool bInHardware() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
		bool bInHardware(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	}
final:
	void TermConstraint()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TermConstraint, cast(void*)0, cast(void*)0);
	}
	void InitConstraint(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PrimComp1, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PrimComp2, RB_ConstraintSetup Setup, float Scale, Actor InOwner, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* InPrimComp, bool bMakeKinForBody1)
	{
		ubyte params[28];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PrimComp1;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = PrimComp2;
		*cast(RB_ConstraintSetup*)&params[8] = Setup;
		*cast(float*)&params[12] = Scale;
		*cast(Actor*)&params[16] = InOwner;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[20] = InPrimComp;
		*cast(bool*)&params[24] = bMakeKinForBody1;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitConstraint, params.ptr, cast(void*)0);
	}
	PhysicsAssetInstance GetPhysicsAssetInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicsAssetInstance, params.ptr, cast(void*)0);
		return *cast(PhysicsAssetInstance*)params.ptr;
	}
	Vector GetConstraintLocation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetConstraintLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void SetLinearPositionDrive(bool bEnableXDrive, bool bEnableYDrive, bool bEnableZDrive)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableXDrive;
		*cast(bool*)&params[4] = bEnableYDrive;
		*cast(bool*)&params[8] = bEnableZDrive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLinearPositionDrive, params.ptr, cast(void*)0);
	}
	void SetLinearVelocityDrive(bool bEnableXDrive, bool bEnableYDrive, bool bEnableZDrive)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableXDrive;
		*cast(bool*)&params[4] = bEnableYDrive;
		*cast(bool*)&params[8] = bEnableZDrive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLinearVelocityDrive, params.ptr, cast(void*)0);
	}
	void SetAngularPositionDrive(bool bEnableSwingDrive, bool bEnableTwistDrive)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableSwingDrive;
		*cast(bool*)&params[4] = bEnableTwistDrive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAngularPositionDrive, params.ptr, cast(void*)0);
	}
	void SetAngularVelocityDrive(bool bEnableSwingDrive, bool bEnableTwistDrive)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableSwingDrive;
		*cast(bool*)&params[4] = bEnableTwistDrive;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAngularVelocityDrive, params.ptr, cast(void*)0);
	}
	void SetLinearPositionTarget(Vector InPosTarget)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = InPosTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLinearPositionTarget, params.ptr, cast(void*)0);
	}
	void SetLinearVelocityTarget(Vector InVelTarget)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = InVelTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLinearVelocityTarget, params.ptr, cast(void*)0);
	}
	void SetLinearDriveParams(float InSpring, float InDamping, float InForceLimit)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InSpring;
		*cast(float*)&params[4] = InDamping;
		*cast(float*)&params[8] = InForceLimit;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLinearDriveParams, params.ptr, cast(void*)0);
	}
	void SetAngularPositionTarget(UObject.Quat* InPosTarget)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = *InPosTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAngularPositionTarget, params.ptr, cast(void*)0);
		*InPosTarget = *cast(UObject.Quat*)params.ptr;
	}
	void SetAngularVelocityTarget(Vector InVelTarget)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = InVelTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAngularVelocityTarget, params.ptr, cast(void*)0);
	}
	void SetAngularDriveParams(float InSpring, float InDamping, float InForceLimit)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InSpring;
		*cast(float*)&params[4] = InDamping;
		*cast(float*)&params[8] = InForceLimit;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAngularDriveParams, params.ptr, cast(void*)0);
	}
	void SetAngularDOFLimitScale(float InSwing1LimitScale, float InSwing2LimitScale, float InTwistLimitScale, RB_ConstraintSetup InSetup)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = InSwing1LimitScale;
		*cast(float*)&params[4] = InSwing2LimitScale;
		*cast(float*)&params[8] = InTwistLimitScale;
		*cast(RB_ConstraintSetup*)&params[12] = InSetup;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAngularDOFLimitScale, params.ptr, cast(void*)0);
	}
	void SetLinearLimitSize(float NewLimitSize)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewLimitSize;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLinearLimitSize, params.ptr, cast(void*)0);
	}
	void MoveKinActorTransform(UObject.Matrix* NewTM)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = *NewTM;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveKinActorTransform, params.ptr, cast(void*)0);
		*NewTM = *cast(UObject.Matrix*)params.ptr;
	}
}
