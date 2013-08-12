module UnrealScript.Engine.SeqAct_GiveInventory;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GiveInventory : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_GiveInventory")); }
	private static __gshared SeqAct_GiveInventory mDefaultProperties;
	@property final static SeqAct_GiveInventory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_GiveInventory)("SeqAct_GiveInventory Engine.Default__SeqAct_GiveInventory")); }
	@property final
	{
		@property final auto ref ScriptArray!(ScriptClass) InventoryList() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 232); }
		bool bClearExisting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
		bool bClearExisting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
		bool bForceReplace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x2) != 0; }
		bool bForceReplace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x2; } return val; }
	}
}
