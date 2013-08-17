module UnrealScript.TribesGame.GFxTrPage_Extras;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Extras : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_Extras")); }
	private static __gshared GFxTrPage_Extras mDefaultProperties;
	@property final static GFxTrPage_Extras DefaultProperties() { mixin(MGDPC("GFxTrPage_Extras", "GFxTrPage_Extras TribesGame.Default__GFxTrPage_Extras")); }
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
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_Extras.Initialize")); }
			ScriptFunction ShowModel() { mixin(MGF("mShowModel", "Function TribesGame.GFxTrPage_Extras.ShowModel")); }
			ScriptFunction SpecialAction() { mixin(MGF("mSpecialAction", "Function TribesGame.GFxTrPage_Extras.SpecialAction")); }
			ScriptFunction PopupData() { mixin(MGF("mPopupData", "Function TribesGame.GFxTrPage_Extras.PopupData")); }
			ScriptFunction PopupComplete() { mixin(MGF("mPopupComplete", "Function TribesGame.GFxTrPage_Extras.PopupComplete")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString PromoPopupTitle() { mixin(MGPC("ScriptString", 404)); }
			ScriptString C1P3() { mixin(MGPC("ScriptString", 392)); }
			ScriptString C1P2() { mixin(MGPC("ScriptString", 380)); }
			ScriptString C1P1() { mixin(MGPC("ScriptString", 368)); }
			int CheatCodeAction() { mixin(MGPC("int", 360)); }
			int ClaimPromotionAction() { mixin(MGPC("int", 356)); }
		}
		bool bWaitingForClaimPromoPopup() { mixin(MGBPC(364, 0x2)); }
		bool bWaitingForClaimPromoPopup(bool val) { mixin(MSBPC(364, 0x2)); }
		bool bWaitingForCheatCodePopup() { mixin(MGBPC(364, 0x1)); }
		bool bWaitingForCheatCodePopup(bool val) { mixin(MSBPC(364, 0x1)); }
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
