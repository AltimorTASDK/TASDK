module UnrealScript.TribesGame.TrRibbonManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrRibbonManager : UObject
{
	struct RibbonData
	{
		public @property final auto ref int Ribbon() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __Ribbon[4];
		public @property final auto ref int Type() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Type[4];
		public @property final auto ref int Id() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Id[4];
	}
	public @property final bool bDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
	public @property final bool bDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	public @property final bool bHaveUnlocks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
	public @property final bool bHaveUnlocks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
	public @property final bool bOnlyUnlocks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x4) != 0; }
	public @property final bool bOnlyUnlocks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x4; } return val; }
	public @property final bool bHaveUpgrades() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x8) != 0; }
	public @property final bool bHaveUpgrades(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x8; } return val; }
	public @property final bool bOnlyUpgrades() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x10) != 0; }
	public @property final bool bOnlyUpgrades(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x10; } return val; }
	public @property final auto ref ScriptArray!(TrRibbonManager.RibbonData) ClassRibbons() { return *cast(ScriptArray!(TrRibbonManager.RibbonData)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptArray!(TrRibbonManager.RibbonData) TypeRibbons() { return *cast(ScriptArray!(TrRibbonManager.RibbonData)*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptArray!(TrRibbonManager.RibbonData) EquipRibbons() { return *cast(ScriptArray!(TrRibbonManager.RibbonData)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref int PreviousGold() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int PreviousXP() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	final int GetClassRibbon(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56839], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int GetTypeRibbon(int ClassId, int Type)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56853], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int GetEquipRibbon(int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58656], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void CalculateRibbons(int Gold, int XP, bool bForce)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Gold;
		*cast(int*)&params[4] = XP;
		*cast(bool*)&params[8] = bForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110627], params.ptr, cast(void*)0);
	}
}
