module UnrealScript.TribesGame.GFxTrPage_ServerActions;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ServerActions : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_ServerActions")()); }
	private static __gshared GFxTrPage_ServerActions mDefaultProperties;
	@property final static GFxTrPage_ServerActions DefaultProperties() { mixin(MGDPC!(GFxTrPage_ServerActions, "GFxTrPage_ServerActions TribesGame.Default__GFxTrPage_ServerActions")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_ServerActions.Initialize")()); }
			ScriptFunction SpecialAction() { mixin(MGF!("mSpecialAction", "Function TribesGame.GFxTrPage_ServerActions.SpecialAction")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_ServerActions.FillData")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_ServerActions.FillOption")()); }
			ScriptFunction PopupData() { mixin(MGF!("mPopupData", "Function TribesGame.GFxTrPage_ServerActions.PopupData")()); }
			ScriptFunction PopupComplete() { mixin(MGF!("mPopupComplete", "Function TribesGame.GFxTrPage_ServerActions.PopupComplete")()); }
			ScriptFunction CheckDescription() { mixin(MGF!("mCheckDescription", "Function TribesGame.GFxTrPage_ServerActions.CheckDescription")()); }
			ScriptFunction FillDescription() { mixin(MGF!("mFillDescription", "Function TribesGame.GFxTrPage_ServerActions.FillDescription")()); }
			ScriptFunction ShowModel() { mixin(MGF!("mShowModel", "Function TribesGame.GFxTrPage_ServerActions.ShowModel")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int PopupNum() { mixin(MGPC!(int, 380)()); }
			int BanPlayerNum() { mixin(MGPC!(int, 376)()); }
			int KickPlayerNum() { mixin(MGPC!(int, 372)()); }
			int GotoMapServerNum() { mixin(MGPC!(int, 368)()); }
			int KillServerNum() { mixin(MGPC!(int, 364)()); }
			int DisableServerNum() { mixin(MGPC!(int, 360)()); }
			int EnableServerNum() { mixin(MGPC!(int, 356)()); }
		}
		bool bPopup() { mixin(MGBPC!(384, 0x1)()); }
		bool bPopup(bool val) { mixin(MSBPC!(384, 0x1)()); }
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
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
}
