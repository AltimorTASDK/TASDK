module UnrealScript.TribesGame.GFxTrPage_Store;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Store : GFxTrPage
{
	public @property final auto ref ScriptString PromoPopupTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref int ClaimPromotionAction() { return *cast(int*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref ScriptString NoNameChangeInGame() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 384); }
	public @property final bool bWaitingForClaimPromoPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x10) != 0; }
	public @property final bool bWaitingForClaimPromoPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x10; } return val; }
	public @property final bool bConfirmationPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x8) != 0; }
	public @property final bool bConfirmationPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x8; } return val; }
	public @property final bool bClassRequiredPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x4) != 0; }
	public @property final bool bClassRequiredPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x4; } return val; }
	public @property final bool bSelectionPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x2) != 0; }
	public @property final bool bSelectionPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x2; } return val; }
	public @property final bool bCurrencyPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x1) != 0; }
	public @property final bool bCurrencyPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x1; } return val; }
	public @property final auto ref int classIdRequired() { return *cast(int*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref int PopupNum() { return *cast(int*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref int NumGold() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int NumDeal() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int HZCost() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int xpCost() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61211], cast(void*)0, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61214], params.ptr, cast(void*)0);
	}
	final int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61217], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61226], params.ptr, cast(void*)0);
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61228], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61237], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61241], params.ptr, cast(void*)0);
	}
	final GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61245], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61253], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61258], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61266], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61270], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61277], params.ptr, cast(void*)0);
	}
}
