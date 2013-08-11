module UnrealScript.TribesGame.TrRibbonManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrRibbonManager : UObject
{
public extern(D):
	struct RibbonData
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			int Ribbon() { return *cast(int*)(cast(size_t)&this + 8); }
			int Type() { return *cast(int*)(cast(size_t)&this + 4); }
			int Id() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrRibbonManager.RibbonData) ClassRibbons() { return *cast(ScriptArray!(TrRibbonManager.RibbonData)*)(cast(size_t)cast(void*)this + 72); }
			ScriptArray!(TrRibbonManager.RibbonData) TypeRibbons() { return *cast(ScriptArray!(TrRibbonManager.RibbonData)*)(cast(size_t)cast(void*)this + 84); }
			ScriptArray!(TrRibbonManager.RibbonData) EquipRibbons() { return *cast(ScriptArray!(TrRibbonManager.RibbonData)*)(cast(size_t)cast(void*)this + 96); }
			int PreviousGold() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int PreviousXP() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
		bool bHaveUnlocks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
		bool bHaveUnlocks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
		bool bOnlyUnlocks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x4) != 0; }
		bool bOnlyUnlocks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x4; } return val; }
		bool bHaveUpgrades() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x8) != 0; }
		bool bHaveUpgrades(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x8; } return val; }
		bool bOnlyUpgrades() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x10) != 0; }
		bool bOnlyUpgrades(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x10; } return val; }
	}
final:
	int GetClassRibbon(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56839], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetTypeRibbon(int ClassId, int Type)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[56853], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int GetEquipRibbon(int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58656], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void CalculateRibbons(int Gold, int XP, bool bForce)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Gold;
		*cast(int*)&params[4] = XP;
		*cast(bool*)&params[8] = bForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110627], params.ptr, cast(void*)0);
	}
}
