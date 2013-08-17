module UnrealScript.UDKBase.UDKSkelControl_TurretConstrained;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_TurretConstrained : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_TurretConstrained")()); }
	private static __gshared UDKSkelControl_TurretConstrained mDefaultProperties;
	@property final static UDKSkelControl_TurretConstrained DefaultProperties() { mixin(MGDPC!(UDKSkelControl_TurretConstrained, "UDKSkelControl_TurretConstrained UDKBase.Default__UDKSkelControl_TurretConstrained")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnTurretStatusChange;
			ScriptFunction mInitTurret;
			ScriptFunction mWouldConstrainPitch;
		}
		public @property static final
		{
			ScriptFunction OnTurretStatusChange() { mixin(MGF!("mOnTurretStatusChange", "Function UDKBase.UDKSkelControl_TurretConstrained.OnTurretStatusChange")()); }
			ScriptFunction InitTurret() { mixin(MGF!("mInitTurret", "Function UDKBase.UDKSkelControl_TurretConstrained.InitTurret")()); }
			ScriptFunction WouldConstrainPitch() { mixin(MGF!("mWouldConstrainPitch", "Function UDKBase.UDKSkelControl_TurretConstrained.WouldConstrainPitch")()); }
		}
	}
	struct TurretStepData
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKSkelControl_TurretConstrained.TurretStepData")()); }
		@property final auto ref
		{
			UDKSkelControl_TurretConstrained.TurretConstraintData MinAngle() { mixin(MGPS!("UDKSkelControl_TurretConstrained.TurretConstraintData", 20)()); }
			UDKSkelControl_TurretConstrained.TurretConstraintData MaxAngle() { mixin(MGPS!("UDKSkelControl_TurretConstrained.TurretConstraintData", 8)()); }
			int StepEndAngle() { mixin(MGPS!("int", 4)()); }
			int StepStartAngle() { mixin(MGPS!("int", 0)()); }
		}
	}
	struct TurretConstraintData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKSkelControl_TurretConstrained.TurretConstraintData")()); }
		@property final auto ref
		{
			int RollConstraint() { mixin(MGPS!("int", 8)()); }
			int YawConstraint() { mixin(MGPS!("int", 4)()); }
			int PitchConstraint() { mixin(MGPS!("int", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UDKSkelControl_TurretConstrained.TurretStepData) Steps() { mixin(MGPC!("ScriptArray!(UDKSkelControl_TurretConstrained.TurretStepData)", 264)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnTurretStatusChange__Delegate'!
			Rotator ConstrainedBoneRotation() { mixin(MGPC!("Rotator", 300)()); }
			int AssociatedSeatIndex() { mixin(MGPC!("int", 296)()); }
			Rotator DesiredBoneRotation() { mixin(MGPC!("Rotator", 284)()); }
			float PitchSpeedScale() { mixin(MGPC!("float", 280)()); }
			float LagDegreesPerSecond() { mixin(MGPC!("float", 276)()); }
			UDKSkelControl_TurretConstrained.TurretConstraintData MinAngle() { mixin(MGPC!("UDKSkelControl_TurretConstrained.TurretConstraintData", 252)()); }
			UDKSkelControl_TurretConstrained.TurretConstraintData MaxAngle() { mixin(MGPC!("UDKSkelControl_TurretConstrained.TurretConstraintData", 240)()); }
		}
		bool bIsInMotion() { mixin(MGBPC!(236, 0x100)()); }
		bool bIsInMotion(bool val) { mixin(MSBPC!(236, 0x100)()); }
		bool bResetWhenUnattended() { mixin(MGBPC!(236, 0x80)()); }
		bool bResetWhenUnattended(bool val) { mixin(MSBPC!(236, 0x80)()); }
		bool bFixedWhenFiring() { mixin(MGBPC!(236, 0x40)()); }
		bool bFixedWhenFiring(bool val) { mixin(MSBPC!(236, 0x40)()); }
		bool bInvertRoll() { mixin(MGBPC!(236, 0x20)()); }
		bool bInvertRoll(bool val) { mixin(MSBPC!(236, 0x20)()); }
		bool bInvertYaw() { mixin(MGBPC!(236, 0x10)()); }
		bool bInvertYaw(bool val) { mixin(MSBPC!(236, 0x10)()); }
		bool bInvertPitch() { mixin(MGBPC!(236, 0x8)()); }
		bool bInvertPitch(bool val) { mixin(MSBPC!(236, 0x8)()); }
		bool bConstrainRoll() { mixin(MGBPC!(236, 0x4)()); }
		bool bConstrainRoll(bool val) { mixin(MSBPC!(236, 0x4)()); }
		bool bConstrainYaw() { mixin(MGBPC!(236, 0x2)()); }
		bool bConstrainYaw(bool val) { mixin(MSBPC!(236, 0x2)()); }
		bool bConstrainPitch() { mixin(MGBPC!(236, 0x1)()); }
		bool bConstrainPitch(bool val) { mixin(MSBPC!(236, 0x1)()); }
	}
final:
	void OnTurretStatusChange(bool bIsMoving)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsMoving;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTurretStatusChange, params.ptr, cast(void*)0);
	}
	void InitTurret(Rotator InitRot, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = InitRot;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[12] = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitTurret, params.ptr, cast(void*)0);
	}
	bool WouldConstrainPitch(int TestPitch, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = TestPitch;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.WouldConstrainPitch, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
