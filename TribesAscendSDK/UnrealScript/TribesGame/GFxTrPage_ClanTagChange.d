module UnrealScript.TribesGame.GFxTrPage_ClanTagChange;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_VendorTable;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ClanTagChange : GFxTrPage_VendorTable
{
	public @property final auto ref ScriptString RemovePopupTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 464); }
	public @property final auto ref ScriptString ChangePopupTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 452); }
	public @property final auto ref ScriptString RemovePopupBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 440); }
	public @property final auto ref ScriptString ChangePopupBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 428); }
	public @property final auto ref int RemoveItem() { return *cast(int*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref int ChangeItem() { return *cast(int*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref int xpPrice() { return *cast(int*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref int gpPrice() { return *cast(int*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref int CurrencyNum() { return *cast(int*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref int ConfirmNum() { return *cast(int*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref int EntryNum() { return *cast(int*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref int PopupNum() { return *cast(int*)(cast(size_t)cast(void*)this + 396); }
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58113], params.ptr, cast(void*)0);
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58117], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58122], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58126], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58130], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58133], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58141], params.ptr, cast(void*)0);
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58144], cast(void*)0, cast(void*)0);
	}
}
