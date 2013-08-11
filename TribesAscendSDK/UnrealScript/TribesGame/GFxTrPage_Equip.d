module UnrealScript.TribesGame.GFxTrPage_Equip;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Equip : GFxTrPage
{
	public @property final bool bReticulesOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 384) & 0x2) != 0; }
	public @property final bool bReticulesOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 384) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 384) &= ~0x2; } return val; }
	public @property final bool bUpgradePurchase() { return (*cast(uint*)(cast(size_t)cast(void*)this + 384) & 0x1) != 0; }
	public @property final bool bUpgradePurchase(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 384) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 384) &= ~0x1; } return val; }
	public @property final auto ref int ReticuleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref int PurchasingUpgrade() { return *cast(int*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref int PurchasingEquip() { return *cast(int*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref int FocusedEquip() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int ViewedEquip() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int GoldPrice() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int xpPrice() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58595], params.ptr, cast(void*)0);
	}
	final void ShowReticule(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58599], params.ptr, cast(void*)0);
	}
	final void HideReticule()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58608], cast(void*)0, cast(void*)0);
	}
	final void OnPurchaseSuccess()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58609], cast(void*)0, cast(void*)0);
	}
	final void SetActiveEquip(int EquipId, bool bShowStatus)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EquipId;
		*cast(bool*)&params[4] = bShowStatus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58610], params.ptr, cast(void*)0);
	}
	final int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58617], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58621], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58631], params.ptr, cast(void*)0);
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58638], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final GFxObject FillSkin(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58658], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final bool CheckUpgrades(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58664], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillUpgrades(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58670], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58691], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58696], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final GFxObject FillPricingSkin(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58706], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58713], params.ptr, cast(void*)0);
	}
	final GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58717], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final bool CheckPurchasable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58736], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsEquipMaxed(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58738], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsOwned(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58742], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58746], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58750], params.ptr, cast(void*)0);
	}
	final void PopupDataSkin(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58754], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58757], params.ptr, cast(void*)0);
	}
	final void SaveReticule(GFxObject Data)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58764], params.ptr, cast(void*)0);
	}
	final void OnClose()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58770], cast(void*)0, cast(void*)0);
	}
}
