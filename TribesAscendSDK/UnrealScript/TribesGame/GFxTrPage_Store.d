module UnrealScript.TribesGame.GFxTrPage_Store;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Store : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_Store")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mTakeFocus;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mTakeAction;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mCheckPricing;
			ScriptFunction mFillPricing;
			ScriptFunction mModifyAction;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.Initialize")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.SpecialAction")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.TakeFocus")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.FillData")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.FillOption")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.TakeAction")); }
			ScriptFunction CheckDescription() { return mCheckDescription ? mCheckDescription : (mCheckDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.CheckDescription")); }
			ScriptFunction FillDescription() { return mFillDescription ? mFillDescription : (mFillDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.FillDescription")); }
			ScriptFunction CheckPricing() { return mCheckPricing ? mCheckPricing : (mCheckPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.CheckPricing")); }
			ScriptFunction FillPricing() { return mFillPricing ? mFillPricing : (mFillPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.FillPricing")); }
			ScriptFunction ModifyAction() { return mModifyAction ? mModifyAction : (mModifyAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.ModifyAction")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Store.PopupComplete")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString PromoPopupTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 400); }
			int ClaimPromotionAction() { return *cast(int*)(cast(size_t)cast(void*)this + 396); }
			ScriptString NoNameChangeInGame() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 384); }
			int classIdRequired() { return *cast(int*)(cast(size_t)cast(void*)this + 376); }
			int PopupNum() { return *cast(int*)(cast(size_t)cast(void*)this + 372); }
			int NumGold() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
			int NumDeal() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			int HZCost() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int xpCost() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bWaitingForClaimPromoPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x10) != 0; }
		bool bWaitingForClaimPromoPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x10; } return val; }
		bool bConfirmationPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x8) != 0; }
		bool bConfirmationPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x8; } return val; }
		bool bClassRequiredPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x4) != 0; }
		bool bClassRequiredPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x4; } return val; }
		bool bSelectionPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x2) != 0; }
		bool bSelectionPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x2; } return val; }
		bool bCurrencyPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x1) != 0; }
		bool bCurrencyPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFocus, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDescription, params.ptr, cast(void*)0);
	}
	GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillDescription, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckPricing, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillPricing, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupData, params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupComplete, params.ptr, cast(void*)0);
	}
}
