module UnrealScript.Engine.SeqAct_GiveInventory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GiveInventory : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_GiveInventory")); }
	private static __gshared SeqAct_GiveInventory mDefaultProperties;
	@property final static SeqAct_GiveInventory DefaultProperties() { mixin(MGDPC("SeqAct_GiveInventory", "SeqAct_GiveInventory Engine.Default__SeqAct_GiveInventory")); }
	@property final
	{
		@property final auto ref ScriptArray!(ScriptClass) InventoryList() { mixin(MGPC("ScriptArray!(ScriptClass)", 232)); }
		bool bClearExisting() { mixin(MGBPC(244, 0x1)); }
		bool bClearExisting(bool val) { mixin(MSBPC(244, 0x1)); }
		bool bForceReplace() { mixin(MGBPC(244, 0x2)); }
		bool bForceReplace(bool val) { mixin(MSBPC(244, 0x2)); }
	}
}
