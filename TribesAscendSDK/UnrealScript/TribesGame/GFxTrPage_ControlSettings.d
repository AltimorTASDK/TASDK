module UnrealScript.TribesGame.GFxTrPage_ControlSettings;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ControlSettings : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_ControlSettings")); }
	private static __gshared GFxTrPage_ControlSettings mDefaultProperties;
	@property final static GFxTrPage_ControlSettings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_ControlSettings)("GFxTrPage_ControlSettings TribesGame.Default__GFxTrPage_ControlSettings")); }
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
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ControlSettings.Initialize")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ControlSettings.SpecialAction")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ControlSettings.FillOption")); }
			ScriptFunction SetSubTitle() { return mSetSubTitle ? mSetSubTitle : (mSetSubTitle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ControlSettings.SetSubTitle")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ControlSettings.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ControlSettings.PopupComplete")); }
		}
	}
	@property final
	{
		@property final auto ref int popupIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		bool bWaitingForVYSensitivity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x8) != 0; }
		bool bWaitingForVYSensitivity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x8; } return val; }
		bool bWaitingForVPSensitivity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x4) != 0; }
		bool bWaitingForVPSensitivity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x4; } return val; }
		bool bWaitingForSensitivity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x2) != 0; }
		bool bWaitingForSensitivity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x2; } return val; }
		bool bWaitingForFOV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x1) != 0; }
		bool bWaitingForFOV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x1; } return val; }
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
	void SetSubTitle(int Index, float val, GFxObject Obj)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(float*)&params[4] = val;
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
