module UnrealScript.TribesGame.GFxTrPage_Loadouts;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Loadouts : GFxTrPage
{
	public @property final bool bInSelection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x1) != 0; }
	public @property final bool bInSelection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x1; } return val; }
	public @property final bool bClassLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x2) != 0; }
	public @property final bool bClassLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x2; } return val; }
	public @property final auto ref ScriptString LoadoutClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 376); }
	public @property final bool bConfirmationPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x10) != 0; }
	public @property final bool bConfirmationPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x10; } return val; }
	public @property final bool bSelectionPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x8) != 0; }
	public @property final bool bSelectionPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x8; } return val; }
	public @property final bool bCurrencyPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 372) & 0x4) != 0; }
	public @property final bool bCurrencyPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 372) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 372) &= ~0x4; } return val; }
	public @property final auto ref int ModelEquip() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int PopupNum() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int XPAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int GPAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59378], cast(void*)0, cast(void*)0);
	}
	final int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59380], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59385], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59389], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59394], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59399], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59404], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59413], cast(void*)0, cast(void*)0);
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59418], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59423], params.ptr, cast(void*)0);
	}
	final bool RequestActiveClass(int ClassId, int Loadout)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		*cast(int*)&params[4] = Loadout;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59428], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59433], params.ptr, cast(void*)0);
	}
	final GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59437], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final ScriptString GetArmorName(ScriptClass FamilyInfo)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59443], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final ScriptString GetEquipName(int equipType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = equipType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59446], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
