module UnrealScript.Engine.RB_ConstraintInstance;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.RB_ConstraintSetup;
import UnrealScript.Engine.PhysicsAssetInstance;

extern(C++) interface RB_ConstraintInstance : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_ConstraintInstance")()); }
	private static __gshared RB_ConstraintInstance mDefaultProperties;
	@property final static RB_ConstraintInstance DefaultProperties() { mixin(MGDPC!(RB_ConstraintInstance, "RB_ConstraintInstance Engine.Default__RB_ConstraintInstance")()); }
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
			ScriptFunction TermConstraint() { mixin(MGF!("mTermConstraint", "Function Engine.RB_ConstraintInstance.TermConstraint")()); }
			ScriptFunction InitConstraint() { mixin(MGF!("mInitConstraint", "Function Engine.RB_ConstraintInstance.InitConstraint")()); }
			ScriptFunction GetPhysicsAssetInstance() { mixin(MGF!("mGetPhysicsAssetInstance", "Function Engine.RB_ConstraintInstance.GetPhysicsAssetInstance")()); }
			ScriptFunction GetConstraintLocation() { mixin(MGF!("mGetConstraintLocation", "Function Engine.RB_ConstraintInstance.GetConstraintLocation")()); }
			ScriptFunction SetLinearPositionDrive() { mixin(MGF!("mSetLinearPositionDrive", "Function Engine.RB_ConstraintInstance.SetLinearPositionDrive")()); }
			ScriptFunction SetLinearVelocityDrive() { mixin(MGF!("mSetLinearVelocityDrive", "Function Engine.RB_ConstraintInstance.SetLinearVelocityDrive")()); }
			ScriptFunction SetAngularPositionDrive() { mixin(MGF!("mSetAngularPositionDrive", "Function Engine.RB_ConstraintInstance.SetAngularPositionDrive")()); }
			ScriptFunction SetAngularVelocityDrive() { mixin(MGF!("mSetAngularVelocityDrive", "Function Engine.RB_ConstraintInstance.SetAngularVelocityDrive")()); }
			ScriptFunction SetLinearPositionTarget() { mixin(MGF!("mSetLinearPositionTarget", "Function Engine.RB_ConstraintInstance.SetLinearPositionTarget")()); }
			ScriptFunction SetLinearVelocityTarget() { mixin(MGF!("mSetLinearVelocityTarget", "Function Engine.RB_ConstraintInstance.SetLinearVelocityTarget")()); }
			ScriptFunction SetLinearDriveParams() { mixin(MGF!("mSetLinearDriveParams", "Function Engine.RB_ConstraintInstance.SetLinearDriveParams")()); }
			ScriptFunction SetAngularPositionTarget() { mixin(MGF!("mSetAngularPositionTarget", "Function Engine.RB_ConstraintInstance.SetAngularPositionTarget")()); }
			ScriptFunction SetAngularVelocityTarget() { mixin(MGF!("mSetAngularVelocityTarget", "Function Engine.RB_ConstraintInstance.SetAngularVelocityTarget")()); }
			ScriptFunction SetAngularDriveParams() { mixin(MGF!("mSetAngularDriveParams", "Function Engine.RB_ConstraintInstance.SetAngularDriveParams")()); }
			ScriptFunction SetAngularDOFLimitScale() { mixin(MGF!("mSetAngularDOFLimitScale", "Function Engine.RB_ConstraintInstance.SetAngularDOFLimitScale")()); }
			ScriptFunction SetLinearLimitSize() { mixin(MGF!("mSetLinearLimitSize", "Function Engine.RB_ConstraintInstance.SetLinearLimitSize")()); }
			ScriptFunction MoveKinActorTransform() { mixin(MGF!("mMoveKinActorTransform", "Function Engine.RB_ConstraintInstance.MoveKinActorTransform")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int ConstraintIndex() { mixin(MGPC!(int, 68)()); }
			UObject.Pointer DummyKinActor() { mixin(MGPC!(UObject.Pointer, 168)()); }
			float AngularDriveForceLimit() { mixin(MGPC!(float, 164)()); }
			float AngularDriveDamping() { mixin(MGPC!(float, 160)()); }
			float AngularDriveSpring() { mixin(MGPC!(float, 156)()); }
			Vector AngularVelocityTarget() { mixin(MGPC!(Vector, 144)()); }
			UObject.Quat AngularPositionTarget() { mixin(MGPC!(UObject.Quat, 128)()); }
			float LinearDriveForceLimit() { mixin(MGPC!(float, 116)()); }
			float LinearDriveDamping() { mixin(MGPC!(float, 112)()); }
			float LinearDriveSpring() { mixin(MGPC!(float, 108)()); }
			Vector LinearVelocityTarget() { mixin(MGPC!(Vector, 96)()); }
			Vector LinearPositionTarget() { mixin(MGPC!(Vector, 84)()); }
			UObject.Pointer ConstraintData() { mixin(MGPC!(UObject.Pointer, 80)()); }
			int SceneIndex() { mixin(MGPC!(int, 72)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'OwnerComponent'!
			Actor Owner() { mixin(MGPC!(Actor, 60)()); }
		}
		bool bTerminated() { mixin(MGBPC!(76, 0x1000)()); }
		bool bTerminated(bool val) { mixin(MSBPC!(76, 0x1000)()); }
		bool bAngularSlerpDrive() { mixin(MGBPC!(76, 0x800)()); }
		bool bAngularSlerpDrive(bool val) { mixin(MSBPC!(76, 0x800)()); }
		bool bTwistVelocityDrive() { mixin(MGBPC!(76, 0x400)()); }
		bool bTwistVelocityDrive(bool val) { mixin(MSBPC!(76, 0x400)()); }
		bool bTwistPositionDrive() { mixin(MGBPC!(76, 0x200)()); }
		bool bTwistPositionDrive(bool val) { mixin(MSBPC!(76, 0x200)()); }
		bool bSwingVelocityDrive() { mixin(MGBPC!(76, 0x100)()); }
		bool bSwingVelocityDrive(bool val) { mixin(MSBPC!(76, 0x100)()); }
		bool bSwingPositionDrive() { mixin(MGBPC!(76, 0x80)()); }
		bool bSwingPositionDrive(bool val) { mixin(MSBPC!(76, 0x80)()); }
		bool bLinearZVelocityDrive() { mixin(MGBPC!(76, 0x40)()); }
		bool bLinearZVelocityDrive(bool val) { mixin(MSBPC!(76, 0x40)()); }
		bool bLinearZPositionDrive() { mixin(MGBPC!(76, 0x20)()); }
		bool bLinearZPositionDrive(bool val) { mixin(MSBPC!(76, 0x20)()); }
		bool bLinearYVelocityDrive() { mixin(MGBPC!(76, 0x10)()); }
		bool bLinearYVelocityDrive(bool val) { mixin(MSBPC!(76, 0x10)()); }
		bool bLinearYPositionDrive() { mixin(MGBPC!(76, 0x8)()); }
		bool bLinearYPositionDrive(bool val) { mixin(MSBPC!(76, 0x8)()); }
		bool bLinearXVelocityDrive() { mixin(MGBPC!(76, 0x4)()); }
		bool bLinearXVelocityDrive(bool val) { mixin(MSBPC!(76, 0x4)()); }
		bool bLinearXPositionDrive() { mixin(MGBPC!(76, 0x2)()); }
		bool bLinearXPositionDrive(bool val) { mixin(MSBPC!(76, 0x2)()); }
		bool bInHardware() { mixin(MGBPC!(76, 0x1)()); }
		bool bInHardware(bool val) { mixin(MSBPC!(76, 0x1)()); }
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
	void SetAngularPositionTarget(ref const UObject.Quat InPosTarget)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = InPosTarget;
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
	void MoveKinActorTransform(ref UObject.Matrix NewTM)
	{
		ubyte params[64];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = NewTM;
		(cast(ScriptObject)this).ProcessEvent(Functions.MoveKinActorTransform, params.ptr, cast(void*)0);
		*NewTM = *cast(UObject.Matrix*)params.ptr;
	}
}
