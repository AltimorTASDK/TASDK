module UnrealScript.TribesGame.GFxTrPage_KeybindSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_KeybindSettings : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_KeybindSettings")()); }
	private static __gshared GFxTrPage_KeybindSettings mDefaultProperties;
	@property final static GFxTrPage_KeybindSettings DefaultProperties() { mixin(MGDPC!(GFxTrPage_KeybindSettings, "GFxTrPage_KeybindSettings TribesGame.Default__GFxTrPage_KeybindSettings")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mTakeAction;
			ScriptFunction mFillOption;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_KeybindSettings.Initialize")()); }
			ScriptFunction TakeAction() { mixin(MGF!("mTakeAction", "Function TribesGame.GFxTrPage_KeybindSettings.TakeAction")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_KeybindSettings.FillOption")()); }
			ScriptFunction PopupData() { mixin(MGF!("mPopupData", "Function TribesGame.GFxTrPage_KeybindSettings.PopupData")()); }
			ScriptFunction PopupComplete() { mixin(MGF!("mPopupComplete", "Function TribesGame.GFxTrPage_KeybindSettings.PopupComplete")()); }
		}
	}
	@property final
	{
		bool bWaitingForResetConfirmation() { mixin(MGBPC!(356, 0x1)()); }
		bool bWaitingForResetConfirmation(bool val) { mixin(MSBPC!(356, 0x1)()); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
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
}
