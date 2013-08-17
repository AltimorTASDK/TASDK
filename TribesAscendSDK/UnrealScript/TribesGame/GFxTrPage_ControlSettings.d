module UnrealScript.TribesGame.GFxTrPage_ControlSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ControlSettings : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_ControlSettings")); }
	private static __gshared GFxTrPage_ControlSettings mDefaultProperties;
	@property final static GFxTrPage_ControlSettings DefaultProperties() { mixin(MGDPC("GFxTrPage_ControlSettings", "GFxTrPage_ControlSettings TribesGame.Default__GFxTrPage_ControlSettings")); }
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
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_ControlSettings.Initialize")); }
			ScriptFunction SpecialAction() { mixin(MGF("mSpecialAction", "Function TribesGame.GFxTrPage_ControlSettings.SpecialAction")); }
			ScriptFunction FillOption() { mixin(MGF("mFillOption", "Function TribesGame.GFxTrPage_ControlSettings.FillOption")); }
			ScriptFunction SetSubTitle() { mixin(MGF("mSetSubTitle", "Function TribesGame.GFxTrPage_ControlSettings.SetSubTitle")); }
			ScriptFunction PopupData() { mixin(MGF("mPopupData", "Function TribesGame.GFxTrPage_ControlSettings.PopupData")); }
			ScriptFunction PopupComplete() { mixin(MGF("mPopupComplete", "Function TribesGame.GFxTrPage_ControlSettings.PopupComplete")); }
		}
	}
	@property final
	{
		@property final auto ref int popupIndex() { mixin(MGPC("int", 356)); }
		bool bWaitingForVYSensitivity() { mixin(MGBPC(360, 0x8)); }
		bool bWaitingForVYSensitivity(bool val) { mixin(MSBPC(360, 0x8)); }
		bool bWaitingForVPSensitivity() { mixin(MGBPC(360, 0x4)); }
		bool bWaitingForVPSensitivity(bool val) { mixin(MSBPC(360, 0x4)); }
		bool bWaitingForSensitivity() { mixin(MGBPC(360, 0x2)); }
		bool bWaitingForSensitivity(bool val) { mixin(MSBPC(360, 0x2)); }
		bool bWaitingForFOV() { mixin(MGBPC(360, 0x1)); }
		bool bWaitingForFOV(bool val) { mixin(MSBPC(360, 0x1)); }
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
