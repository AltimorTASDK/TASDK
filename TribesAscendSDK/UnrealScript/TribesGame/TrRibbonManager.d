module UnrealScript.TribesGame.TrRibbonManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrRibbonManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRibbonManager")()); }
	private static __gshared TrRibbonManager mDefaultProperties;
	@property final static TrRibbonManager DefaultProperties() { mixin(MGDPC!(TrRibbonManager, "TrRibbonManager TribesGame.Default__TrRibbonManager")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetClassRibbon;
			ScriptFunction mGetTypeRibbon;
			ScriptFunction mGetEquipRibbon;
			ScriptFunction mCalculateRibbons;
		}
		public @property static final
		{
			ScriptFunction GetClassRibbon() { mixin(MGF!("mGetClassRibbon", "Function TribesGame.TrRibbonManager.GetClassRibbon")()); }
			ScriptFunction GetTypeRibbon() { mixin(MGF!("mGetTypeRibbon", "Function TribesGame.TrRibbonManager.GetTypeRibbon")()); }
			ScriptFunction GetEquipRibbon() { mixin(MGF!("mGetEquipRibbon", "Function TribesGame.TrRibbonManager.GetEquipRibbon")()); }
			ScriptFunction CalculateRibbons() { mixin(MGF!("mCalculateRibbons", "Function TribesGame.TrRibbonManager.CalculateRibbons")()); }
		}
	}
	struct RibbonData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrRibbonManager.RibbonData")()); }
		@property final auto ref
		{
			int Ribbon() { mixin(MGPS!(int, 8)()); }
			int Type() { mixin(MGPS!(int, 4)()); }
			int Id() { mixin(MGPS!(int, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrRibbonManager.RibbonData) ClassRibbons() { mixin(MGPC!(ScriptArray!(TrRibbonManager.RibbonData), 72)()); }
			ScriptArray!(TrRibbonManager.RibbonData) TypeRibbons() { mixin(MGPC!(ScriptArray!(TrRibbonManager.RibbonData), 84)()); }
			ScriptArray!(TrRibbonManager.RibbonData) EquipRibbons() { mixin(MGPC!(ScriptArray!(TrRibbonManager.RibbonData), 96)()); }
			int PreviousGold() { mixin(MGPC!(int, 64)()); }
			int PreviousXP() { mixin(MGPC!(int, 60)()); }
		}
		bool bDirty() { mixin(MGBPC!(68, 0x1)()); }
		bool bDirty(bool val) { mixin(MSBPC!(68, 0x1)()); }
		bool bHaveUnlocks() { mixin(MGBPC!(68, 0x2)()); }
		bool bHaveUnlocks(bool val) { mixin(MSBPC!(68, 0x2)()); }
		bool bOnlyUnlocks() { mixin(MGBPC!(68, 0x4)()); }
		bool bOnlyUnlocks(bool val) { mixin(MSBPC!(68, 0x4)()); }
		bool bHaveUpgrades() { mixin(MGBPC!(68, 0x8)()); }
		bool bHaveUpgrades(bool val) { mixin(MSBPC!(68, 0x8)()); }
		bool bOnlyUpgrades() { mixin(MGBPC!(68, 0x10)()); }
		bool bOnlyUpgrades(bool val) { mixin(MSBPC!(68, 0x10)()); }
	}
final:
	int GetClassRibbon(int ClassId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetClassRibbon, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetTypeRibbon(int ClassId, int Type)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTypeRibbon, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int GetEquipRibbon(int EquipId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipRibbon, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void CalculateRibbons(int Gold, int XP, bool bForce)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Gold;
		*cast(int*)&params[4] = XP;
		*cast(bool*)&params[8] = bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculateRibbons, params.ptr, cast(void*)0);
	}
}
