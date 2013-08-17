module UnrealScript.UDKBase.UDKSkelControl_LockRotation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface UDKSkelControl_LockRotation : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_LockRotation")()); }
	private static __gshared UDKSkelControl_LockRotation mDefaultProperties;
	@property final static UDKSkelControl_LockRotation DefaultProperties() { mixin(MGDPC!(UDKSkelControl_LockRotation, "UDKSkelControl_LockRotation UDKBase.Default__UDKSkelControl_LockRotation")()); }
	@property final
	{
		auto ref
		{
			ScriptName RotationSpaceBoneName() { mixin(MGPC!(ScriptName, 220)()); }
			SkelControlBase.EBoneControlSpace LockRotationSpace() { mixin(MGPC!(SkelControlBase.EBoneControlSpace, 216)()); }
			Rotator MaxDelta() { mixin(MGPC!(Rotator, 204)()); }
			Rotator LockRotation() { mixin(MGPC!(Rotator, 192)()); }
		}
		bool bLockRoll() { mixin(MGBPC!(188, 0x4)()); }
		bool bLockRoll(bool val) { mixin(MSBPC!(188, 0x4)()); }
		bool bLockYaw() { mixin(MGBPC!(188, 0x2)()); }
		bool bLockYaw(bool val) { mixin(MSBPC!(188, 0x2)()); }
		bool bLockPitch() { mixin(MGBPC!(188, 0x1)()); }
		bool bLockPitch(bool val) { mixin(MSBPC!(188, 0x1)()); }
	}
}
