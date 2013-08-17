module UnrealScript.TribesGame.GFxTrPage_WhisperSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_WhisperSettings : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_WhisperSettings")()); }
	private static __gshared GFxTrPage_WhisperSettings mDefaultProperties;
	@property final static GFxTrPage_WhisperSettings DefaultProperties() { mixin(MGDPC!(GFxTrPage_WhisperSettings, "GFxTrPage_WhisperSettings TribesGame.Default__GFxTrPage_WhisperSettings")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mSpecialAction;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_WhisperSettings.Initialize")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_WhisperSettings.FillData")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_WhisperSettings.FillOption")()); }
			ScriptFunction SpecialAction() { mixin(MGF!("mSpecialAction", "Function TribesGame.GFxTrPage_WhisperSettings.SpecialAction")()); }
			ScriptFunction ShowModel() { mixin(MGF!("mShowModel", "Function TribesGame.GFxTrPage_WhisperSettings.ShowModel")()); }
		}
	}
	enum MENU_ACTION_WHISPER_NOTIFY_TYPE : ubyte
	{
		MAWNT_SHOWALL = 0,
		MAWNT_ONLYFRIENDS = 1,
		MAWNT_NOBODY = 2,
		MAVNT_MAX = 3,
		MENU_ACTION_WHISPER_NOTIFY_TYPE_MAX = 4,
	}
	@property final auto ref int CurrSetting() { mixin(MGPC!("int", 356)()); }
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
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
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
}
