module UnrealScript.Engine.RB_ConstraintSetup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface RB_ConstraintSetup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_ConstraintSetup")()); }
	private static __gshared RB_ConstraintSetup mDefaultProperties;
	@property final static RB_ConstraintSetup DefaultProperties() { mixin(MGDPC!(RB_ConstraintSetup, "RB_ConstraintSetup Engine.Default__RB_ConstraintSetup")()); }
	struct LinearDOFSetup
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.RB_ConstraintSetup.LinearDOFSetup")()); }
		@property final auto ref
		{
			float LimitSize() { mixin(MGPS!(float, 4)()); }
			ubyte bLimited() { mixin(MGPS!(ubyte, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptName JointName() { mixin(MGPC!(ScriptName, 60)()); }
			ScriptName ConstraintBone1() { mixin(MGPC!(ScriptName, 68)()); }
			ScriptName ConstraintBone2() { mixin(MGPC!(ScriptName, 76)()); }
			float PulleyRatio() { mixin(MGPC!(float, 252)()); }
			float AngularBreakThreshold() { mixin(MGPC!(float, 248)()); }
			float TwistLimitDamping() { mixin(MGPC!(float, 244)()); }
			float TwistLimitStiffness() { mixin(MGPC!(float, 240)()); }
			float SwingLimitDamping() { mixin(MGPC!(float, 236)()); }
			float SwingLimitStiffness() { mixin(MGPC!(float, 232)()); }
			float TwistLimitAngle() { mixin(MGPC!(float, 228)()); }
			float Swing2LimitAngle() { mixin(MGPC!(float, 224)()); }
			float Swing1LimitAngle() { mixin(MGPC!(float, 220)()); }
			float LinearBreakThreshold() { mixin(MGPC!(float, 216)()); }
			float LinearLimitDamping() { mixin(MGPC!(float, 212)()); }
			float LinearLimitStiffness() { mixin(MGPC!(float, 208)()); }
			RB_ConstraintSetup.LinearDOFSetup LinearZSetup() { mixin(MGPC!(RB_ConstraintSetup.LinearDOFSetup, 200)()); }
			RB_ConstraintSetup.LinearDOFSetup LinearYSetup() { mixin(MGPC!(RB_ConstraintSetup.LinearDOFSetup, 192)()); }
			RB_ConstraintSetup.LinearDOFSetup LinearXSetup() { mixin(MGPC!(RB_ConstraintSetup.LinearDOFSetup, 184)()); }
			Vector PulleyPivot2() { mixin(MGPC!(Vector, 168)()); }
			Vector PulleyPivot1() { mixin(MGPC!(Vector, 156)()); }
			Vector SecAxis2() { mixin(MGPC!(Vector, 144)()); }
			Vector PriAxis2() { mixin(MGPC!(Vector, 132)()); }
			Vector Pos2() { mixin(MGPC!(Vector, 120)()); }
			Vector SecAxis1() { mixin(MGPC!(Vector, 108)()); }
			Vector PriAxis1() { mixin(MGPC!(Vector, 96)()); }
			Vector Pos1() { mixin(MGPC!(Vector, 84)()); }
		}
		bool bMaintainMinDistance() { mixin(MGBPC!(180, 0x200)()); }
		bool bMaintainMinDistance(bool val) { mixin(MSBPC!(180, 0x200)()); }
		bool bIsPulley() { mixin(MGBPC!(180, 0x100)()); }
		bool bIsPulley(bool val) { mixin(MSBPC!(180, 0x100)()); }
		bool bAngularBreakable() { mixin(MGBPC!(180, 0x80)()); }
		bool bAngularBreakable(bool val) { mixin(MSBPC!(180, 0x80)()); }
		bool bTwistLimitSoft() { mixin(MGBPC!(180, 0x40)()); }
		bool bTwistLimitSoft(bool val) { mixin(MSBPC!(180, 0x40)()); }
		bool bSwingLimitSoft() { mixin(MGBPC!(180, 0x20)()); }
		bool bSwingLimitSoft(bool val) { mixin(MSBPC!(180, 0x20)()); }
		bool bTwistLimited() { mixin(MGBPC!(180, 0x10)()); }
		bool bTwistLimited(bool val) { mixin(MSBPC!(180, 0x10)()); }
		bool bSwingLimited() { mixin(MGBPC!(180, 0x8)()); }
		bool bSwingLimited(bool val) { mixin(MSBPC!(180, 0x8)()); }
		bool bLinearBreakable() { mixin(MGBPC!(180, 0x4)()); }
		bool bLinearBreakable(bool val) { mixin(MSBPC!(180, 0x4)()); }
		bool bLinearLimitSoft() { mixin(MGBPC!(180, 0x2)()); }
		bool bLinearLimitSoft(bool val) { mixin(MSBPC!(180, 0x2)()); }
		bool bEnableProjection() { mixin(MGBPC!(180, 0x1)()); }
		bool bEnableProjection(bool val) { mixin(MSBPC!(180, 0x1)()); }
	}
}
