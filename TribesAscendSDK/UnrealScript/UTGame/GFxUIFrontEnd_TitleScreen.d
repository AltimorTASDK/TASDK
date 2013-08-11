module UnrealScript.UTGame.GFxUIFrontEnd_TitleScreen;

import ScriptClasses;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUIFrontEnd_TitleScreen : GFxMoviePlayer
{
public extern(D):
	enum MenuButtonsType : ubyte
	{
		MENU_BTN_CAMPAIGN = 0,
		MENU_BTN_INSTANTACTION = 1,
		MENU_BTN_MULTIPLAYER = 2,
		MENU_BTN_COMMUNITY = 3,
		MENU_BTN_SETTINGS = 4,
		MENU_BTN_EXIT = 5,
		MENU_BTN_LOGOUT = 6,
		MENU_BTN_SELECT = 7,
		MENU_BTN_MAX = 8,
	}
	@property final auto ref
	{
		// WARNING: Property 'Selection' has the same name as a defined type!
		ScriptString CampaignMap() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 432); }
		ScriptString InstantActionMap() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 420); }
		GFxClikWidget MenuBtn6MC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 416); }
		GFxClikWidget MenuBtn5MC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 412); }
		GFxClikWidget MenuBtn4MC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 408); }
		GFxClikWidget MenuBtn3MC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 404); }
		GFxClikWidget MenuBtn2MC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 400); }
		GFxClikWidget MenuBtn1MC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 396); }
		GFxObject BlackMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 392); }
		GFxObject MenuButtonsMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 388); }
		GFxObject MainMenuMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 384); }
		GFxObject TitleScreenMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 380); }
	}
final:
	bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39129], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FilterButtonInput(int ControllerId, ScriptName ButtonName, UObject.EInputEvent InputEvent)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = ButtonName;
		*cast(UObject.EInputEvent*)&params[12] = InputEvent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39132], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void OnMenuButtonPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39137], params.ptr, cast(void*)0);
	}
	void PlayCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39139], cast(void*)0, cast(void*)0);
	}
	void OnCloseAnimationComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39140], cast(void*)0, cast(void*)0);
	}
	void UT_ConsoleCommand(ScriptString Cmd, bool bWriteToLog)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Cmd;
		*cast(bool*)&params[12] = bWriteToLog;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39141], params.ptr, cast(void*)0);
	}
}
