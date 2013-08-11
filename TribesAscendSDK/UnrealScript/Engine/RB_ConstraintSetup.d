module UnrealScript.Engine.RB_ConstraintSetup;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface RB_ConstraintSetup : UObject
{
	struct LinearDOFSetup
	{
		public @property final auto ref float LimitSize() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __LimitSize[4];
		public @property final auto ref ubyte bLimited() { return *cast(ubyte*)(cast(size_t)&this + 0); }
		private ubyte __bLimited[1];
	}
	public @property final auto ref ScriptName JointName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptName ConstraintBone1() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref ScriptName ConstraintBone2() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref float PulleyRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float AngularBreakThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float TwistLimitDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float TwistLimitStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float SwingLimitDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float SwingLimitStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref float TwistLimitAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref float Swing2LimitAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref float Swing1LimitAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref float LinearBreakThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref float LinearLimitDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref float LinearLimitStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref RB_ConstraintSetup.LinearDOFSetup LinearZSetup() { return *cast(RB_ConstraintSetup.LinearDOFSetup*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref RB_ConstraintSetup.LinearDOFSetup LinearYSetup() { return *cast(RB_ConstraintSetup.LinearDOFSetup*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref RB_ConstraintSetup.LinearDOFSetup LinearXSetup() { return *cast(RB_ConstraintSetup.LinearDOFSetup*)(cast(size_t)cast(void*)this + 184); }
	public @property final bool bMaintainMinDistance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x200) != 0; }
	public @property final bool bMaintainMinDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x200; } return val; }
	public @property final bool bIsPulley() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x100) != 0; }
	public @property final bool bIsPulley(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x100; } return val; }
	public @property final bool bAngularBreakable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x80) != 0; }
	public @property final bool bAngularBreakable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x80; } return val; }
	public @property final bool bTwistLimitSoft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x40) != 0; }
	public @property final bool bTwistLimitSoft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x40; } return val; }
	public @property final bool bSwingLimitSoft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x20) != 0; }
	public @property final bool bSwingLimitSoft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x20; } return val; }
	public @property final bool bTwistLimited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x10) != 0; }
	public @property final bool bTwistLimited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x10; } return val; }
	public @property final bool bSwingLimited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x8) != 0; }
	public @property final bool bSwingLimited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x8; } return val; }
	public @property final bool bLinearBreakable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x4) != 0; }
	public @property final bool bLinearBreakable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x4; } return val; }
	public @property final bool bLinearLimitSoft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x2) != 0; }
	public @property final bool bLinearLimitSoft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x2; } return val; }
	public @property final bool bEnableProjection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x1) != 0; }
	public @property final bool bEnableProjection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x1; } return val; }
	public @property final auto ref Vector PulleyPivot2() { return *cast(Vector*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref Vector PulleyPivot1() { return *cast(Vector*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref Vector SecAxis2() { return *cast(Vector*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref Vector PriAxis2() { return *cast(Vector*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref Vector Pos2() { return *cast(Vector*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref Vector SecAxis1() { return *cast(Vector*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref Vector PriAxis1() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref Vector Pos1() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
}
