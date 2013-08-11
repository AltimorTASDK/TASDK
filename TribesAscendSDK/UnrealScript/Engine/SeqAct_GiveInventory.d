module UnrealScript.Engine.SeqAct_GiveInventory;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GiveInventory : SequenceAction
{
	public @property final bool bClearExisting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
	public @property final bool bClearExisting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	public @property final auto ref ScriptArray!(ScriptClass) InventoryList() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 232); }
	public @property final bool bForceReplace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x2) != 0; }
	public @property final bool bForceReplace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x2; } return val; }
}
