module UnrealScript.TribesGame.GFxTrPage_Bundles;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Bundles : GFxTrPage
{
	public @property final auto ref int classIdRequired() { return *cast(int*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref ScriptString DescriptionLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 368); }
	public @property final bool bWaitingForClassRequiredPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x2) != 0; }
	public @property final bool bWaitingForClassRequiredPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x2; } return val; }
	public @property final bool bWaitingForBundleOwnedPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x1) != 0; }
	public @property final bool bWaitingForBundleOwnedPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x1; } return val; }
	public @property final auto ref int selectedVendorItemId() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int selectedActionIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57796], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57801], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57805], params.ptr, cast(void*)0);
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57812], params.ptr, cast(void*)0);
	}
	final bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57821], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57826], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57837], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57854], params.ptr, cast(void*)0);
	}
	final GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57858], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57865], cast(void*)0, cast(void*)0);
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57867], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57872], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[57886], params.ptr, cast(void*)0);
	}
}
