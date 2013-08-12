module UnrealScript.TribesGame.GFxTrPage_Extras;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Extras : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_Extras")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mShowModel;
			ScriptFunction mSpecialAction;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Extras.Initialize")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Extras.ShowModel")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Extras.SpecialAction")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Extras.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Extras.PopupComplete")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString PromoPopupTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 404); }
			ScriptString C1P3() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 392); }
			ScriptString C1P2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 380); }
			ScriptString C1P1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 368); }
			int CheatCodeAction() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int ClaimPromotionAction() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bWaitingForClaimPromoPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x2) != 0; }
		bool bWaitingForClaimPromoPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x2; } return val; }
		bool bWaitingForCheatCodePopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x1) != 0; }
		bool bWaitingForCheatCodePopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
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
