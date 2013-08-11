module UnrealScript.Engine.SeqAct_ToggleCinematicMode;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ToggleCinematicMode : SequenceAction
{
	public @property final bool bHidePlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x4) != 0; }
	public @property final bool bHidePlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x4; } return val; }
	public @property final bool bHideHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x10) != 0; }
	public @property final bool bHideHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x10; } return val; }
	public @property final bool bDisableMovement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bDisableMovement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	public @property final bool bDisableTurning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
	public @property final bool bDisableTurning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
	public @property final bool bDisableInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x8) != 0; }
	public @property final bool bDisableInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x8; } return val; }
	public @property final bool bDroppedPickups() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x40) != 0; }
	public @property final bool bDroppedPickups(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x40; } return val; }
	public @property final bool bDeadBodies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x20) != 0; }
	public @property final bool bDeadBodies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x20; } return val; }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25985], cast(void*)0, cast(void*)0);
	}
}
