module UnrealScript.TribesGame.GFxTrPage_KeybindAction;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_KeybindAction : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_KeybindAction")); }
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
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_KeybindAction.FillOption")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_KeybindAction.TakeAction")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_KeybindAction.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_KeybindAction.PopupComplete")); }
			ScriptFunction KeyEvent() { return mKeyEvent ? mKeyEvent : (mKeyEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_KeybindAction.KeyEvent")); }
		}
	}
	@property final
	{
		auto ref
		{
			int SelectedCommand() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int SelectedIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bWaitingForKeybind() { return (*cast(uint*)(cast(size_t)cast(void*)this + 364) & 0x1) != 0; }
		bool bWaitingForKeybind(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 364) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 364) &= ~0x1; } return val; }
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
