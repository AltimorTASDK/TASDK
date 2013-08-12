module UnrealScript.TribesGame.GFxTrPage_AudioSettings;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_AudioSettings : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_AudioSettings")); }
	private static __gshared GFxTrPage_AudioSettings mDefaultProperties;
	@property final static GFxTrPage_AudioSettings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_AudioSettings)("GFxTrPage_AudioSettings TribesGame.Default__GFxTrPage_AudioSettings")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mFillOption;
			ScriptFunction mSetSubTitle;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_AudioSettings.Initialize")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_AudioSettings.SpecialAction")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_AudioSettings.FillOption")); }
			ScriptFunction SetSubTitle() { return mSetSubTitle ? mSetSubTitle : (mSetSubTitle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_AudioSettings.SetSubTitle")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_AudioSettings.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_AudioSettings.PopupComplete")); }
		}
	}
	@property final
	{
		@property final auto ref int AudioIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		bool bWaitingForAudioEntry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x1) != 0; }
		bool bWaitingForAudioEntry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x1; } return val; }
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
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void SetSubTitle(int Index, int val, GFxObject Obj)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(int*)&params[4] = val;
		*cast(GFxObject*)&params[8] = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSubTitle, params.ptr, cast(void*)0);
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
