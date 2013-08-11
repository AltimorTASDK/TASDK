module UnrealScript.TribesGame.GFxTrPage_Extras;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Extras : GFxTrPage
{
	public @property final auto ref ScriptString PromoPopupTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref ScriptString C1P3() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref ScriptString C1P2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref ScriptString C1P1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 368); }
	public @property final bool bWaitingForClaimPromoPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x2) != 0; }
	public @property final bool bWaitingForClaimPromoPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x2; } return val; }
	public @property final bool bWaitingForCheatCodePopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x1) != 0; }
	public @property final bool bWaitingForCheatCodePopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x1; } return val; }
	public @property final auto ref int CheatCodeAction() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int ClaimPromotionAction() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58781], cast(void*)0, cast(void*)0);
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58782], cast(void*)0, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58783], params.ptr, cast(void*)0);
	}
	final void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58785], params.ptr, cast(void*)0);
	}
	final void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58788], params.ptr, cast(void*)0);
	}
}
