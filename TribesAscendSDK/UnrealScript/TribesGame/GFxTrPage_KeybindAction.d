module UnrealScript.TribesGame.GFxTrPage_KeybindAction;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_KeybindAction : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_KeybindAction")()); }
	private static __gshared GFxTrPage_KeybindAction mDefaultProperties;
	@property final static GFxTrPage_KeybindAction DefaultProperties() { mixin(MGDPC!(GFxTrPage_KeybindAction, "GFxTrPage_KeybindAction TribesGame.Default__GFxTrPage_KeybindAction")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFillOption;
			ScriptFunction mTakeAction;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mKeyEvent;
		}
		public @property static final
		{
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_KeybindAction.FillOption")()); }
			ScriptFunction TakeAction() { mixin(MGF!("mTakeAction", "Function TribesGame.GFxTrPage_KeybindAction.TakeAction")()); }
			ScriptFunction PopupData() { mixin(MGF!("mPopupData", "Function TribesGame.GFxTrPage_KeybindAction.PopupData")()); }
			ScriptFunction PopupComplete() { mixin(MGF!("mPopupComplete", "Function TribesGame.GFxTrPage_KeybindAction.PopupComplete")()); }
			ScriptFunction KeyEvent() { mixin(MGF!("mKeyEvent", "Function TribesGame.GFxTrPage_KeybindAction.KeyEvent")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int SelectedCommand() { mixin(MGPC!(int, 360)()); }
			int SelectedIndex() { mixin(MGPC!(int, 356)()); }
		}
		bool bWaitingForKeybind() { mixin(MGBPC!(364, 0x1)()); }
		bool bWaitingForKeybind(bool val) { mixin(MSBPC!(364, 0x1)()); }
	}
final:
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
	void KeyEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KeyEvent, cast(void*)0, cast(void*)0);
	}
}
