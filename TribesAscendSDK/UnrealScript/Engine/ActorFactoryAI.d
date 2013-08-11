module UnrealScript.Engine.ActorFactoryAI;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryAI : ActorFactory
{
	public @property final auto ref ScriptArray!(ScriptClass) InventoryList() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref int TeamIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
	public @property final bool bGiveDefaultInventory() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
	public @property final bool bGiveDefaultInventory(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	public @property final auto ref ScriptString PawnName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref ScriptClass PawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptClass ControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
}
