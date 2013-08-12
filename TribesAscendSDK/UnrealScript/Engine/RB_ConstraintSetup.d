module UnrealScript.Engine.RB_ConstraintSetup;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface RB_ConstraintSetup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_ConstraintSetup")); }
	struct LinearDOFSetup
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.RB_ConstraintSetup.LinearDOFSetup")); }
		@property final auto ref
		{
			float LimitSize() { return *cast(float*)(cast(size_t)&this + 4); }
			ubyte bLimited() { return *cast(ubyte*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptName JointName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
			ScriptName ConstraintBone1() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 68); }
			ScriptName ConstraintBone2() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
			float PulleyRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			float AngularBreakThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float TwistLimitDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float TwistLimitStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			float SwingLimitDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
			float SwingLimitStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			float TwistLimitAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
			float Swing2LimitAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
			float Swing1LimitAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
			float LinearBreakThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
			float LinearLimitDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
			float LinearLimitStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
			RB_ConstraintSetup.LinearDOFSetup LinearZSetup() { return *cast(RB_ConstraintSetup.LinearDOFSetup*)(cast(size_t)cast(void*)this + 200); }
			RB_ConstraintSetup.LinearDOFSetup LinearYSetup() { return *cast(RB_ConstraintSetup.LinearDOFSetup*)(cast(size_t)cast(void*)this + 192); }
			RB_ConstraintSetup.LinearDOFSetup LinearXSetup() { return *cast(RB_ConstraintSetup.LinearDOFSetup*)(cast(size_t)cast(void*)this + 184); }
			Vector PulleyPivot2() { return *cast(Vector*)(cast(size_t)cast(void*)this + 168); }
			Vector PulleyPivot1() { return *cast(Vector*)(cast(size_t)cast(void*)this + 156); }
			Vector SecAxis2() { return *cast(Vector*)(cast(size_t)cast(void*)this + 144); }
			Vector PriAxis2() { return *cast(Vector*)(cast(size_t)cast(void*)this + 132); }
			Vector Pos2() { return *cast(Vector*)(cast(size_t)cast(void*)this + 120); }
			Vector SecAxis1() { return *cast(Vector*)(cast(size_t)cast(void*)this + 108); }
			Vector PriAxis1() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
			Vector Pos1() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
		}
		bool bMaintainMinDistance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x200) != 0; }
		bool bMaintainMinDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x200; } return val; }
		bool bIsPulley() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x100) != 0; }
		bool bIsPulley(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x100; } return val; }
		bool bAngularBreakable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x80) != 0; }
		bool bAngularBreakable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x80; } return val; }
		bool bTwistLimitSoft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x40) != 0; }
		bool bTwistLimitSoft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x40; } return val; }
		bool bSwingLimitSoft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x20) != 0; }
		bool bSwingLimitSoft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x20; } return val; }
		bool bTwistLimited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x10) != 0; }
		bool bTwistLimited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x10; } return val; }
		bool bSwingLimited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x8) != 0; }
		bool bSwingLimited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x8; } return val; }
		bool bLinearBreakable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x4) != 0; }
		bool bLinearBreakable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x4; } return val; }
		bool bLinearLimitSoft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x2) != 0; }
		bool bLinearLimitSoft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x2; } return val; }
		bool bEnableProjection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x1) != 0; }
		bool bEnableProjection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x1; } return val; }
	}
}
