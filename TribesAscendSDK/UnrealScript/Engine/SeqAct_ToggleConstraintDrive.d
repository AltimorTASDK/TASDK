module UnrealScript.Engine.SeqAct_ToggleConstraintDrive;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ToggleConstraintDrive : SequenceAction
{
	public @property final bool bEnableLinearPositionDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x4) != 0; }
	public @property final bool bEnableLinearPositionDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x4; } return val; }
	public @property final bool bEnableLinearvelocityDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x8) != 0; }
	public @property final bool bEnableLinearvelocityDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x8; } return val; }
	public @property final bool bEnableAngularPositionDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bEnableAngularPositionDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	public @property final bool bEnableAngularVelocityDrive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
	public @property final bool bEnableAngularVelocityDrive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
}
