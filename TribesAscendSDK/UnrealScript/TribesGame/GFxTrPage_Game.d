module UnrealScript.TribesGame.GFxTrPage_Game;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Game : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_Game")); }
	private static __gshared GFxTrPage_Game mDefaultProperties;
	@property final static GFxTrPage_Game DefaultProperties() { mixin(MGDPC("GFxTrPage_Game", "GFxTrPage_Game TribesGame.Default__GFxTrPage_Game")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mFillData;
			ScriptFunction mTakeAction;
			ScriptFunction mSpecialAction;
			ScriptFunction mFillOption;
			ScriptFunction mPushModel;
			ScriptFunction mHelpButton;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_Game.Initialize")); }
			ScriptFunction FillData() { mixin(MGF("mFillData", "Function TribesGame.GFxTrPage_Game.FillData")); }
			ScriptFunction TakeAction() { mixin(MGF("mTakeAction", "Function TribesGame.GFxTrPage_Game.TakeAction")); }
			ScriptFunction SpecialAction() { mixin(MGF("mSpecialAction", "Function TribesGame.GFxTrPage_Game.SpecialAction")); }
			ScriptFunction FillOption() { mixin(MGF("mFillOption", "Function TribesGame.GFxTrPage_Game.FillOption")); }
			ScriptFunction PushModel() { mixin(MGF("mPushModel", "Function TribesGame.GFxTrPage_Game.PushModel")); }
			ScriptFunction HelpButton() { mixin(MGF("mHelpButton", "Function TribesGame.GFxTrPage_Game.HelpButton")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString strExitMatch() { mixin(MGPC("ScriptString", 424)); }
			ScriptString strManageServers() { mixin(MGPC("ScriptString", 412)); }
			ScriptString strSettings() { mixin(MGPC("ScriptString", 400)); }
			ScriptString strStore() { mixin(MGPC("ScriptString", 388)); }
			ScriptString strSocial() { mixin(MGPC("ScriptString", 376)); }
			ScriptString strParty() { mixin(MGPC("ScriptString", 364)); }
			int TeamLoadoutNum() { mixin(MGPC("int", 356)); }
		}
		bool bRemovePartyTemp() { mixin(MGBPC(360, 0x1)); }
		bool bRemovePartyTemp(bool val) { mixin(MSBPC(360, 0x1)); }
	}
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
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
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
	void PushModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PushModel, cast(void*)0, cast(void*)0);
	}
	void HelpButton(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.HelpButton, params.ptr, cast(void*)0);
	}
}
