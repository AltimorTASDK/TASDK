module UnrealScript.UTGame.GFxUIFrontEnd_TitleScreen;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUIFrontEnd_TitleScreen : GFxMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUIFrontEnd_TitleScreen")()); }
	private static __gshared GFxUIFrontEnd_TitleScreen mDefaultProperties;
	@property final static GFxUIFrontEnd_TitleScreen DefaultProperties() { mixin(MGDPC!(GFxUIFrontEnd_TitleScreen, "GFxUIFrontEnd_TitleScreen UTGame.Default__GFxUIFrontEnd_TitleScreen")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mStart;
			ScriptFunction mFilterButtonInput;
			ScriptFunction mOnMenuButtonPress;
			ScriptFunction mPlayCloseAnimation;
			ScriptFunction mOnCloseAnimationComplete;
			ScriptFunction mUT_ConsoleCommand;
		}
		public @property static final
		{
			ScriptFunction Start() { mixin(MGF!("mStart", "Function UTGame.GFxUIFrontEnd_TitleScreen.Start")()); }
			ScriptFunction FilterButtonInput() { mixin(MGF!("mFilterButtonInput", "Function UTGame.GFxUIFrontEnd_TitleScreen.FilterButtonInput")()); }
			ScriptFunction OnMenuButtonPress() { mixin(MGF!("mOnMenuButtonPress", "Function UTGame.GFxUIFrontEnd_TitleScreen.OnMenuButtonPress")()); }
			ScriptFunction PlayCloseAnimation() { mixin(MGF!("mPlayCloseAnimation", "Function UTGame.GFxUIFrontEnd_TitleScreen.PlayCloseAnimation")()); }
			ScriptFunction OnCloseAnimationComplete() { mixin(MGF!("mOnCloseAnimationComplete", "Function UTGame.GFxUIFrontEnd_TitleScreen.OnCloseAnimationComplete")()); }
			ScriptFunction UT_ConsoleCommand() { mixin(MGF!("mUT_ConsoleCommand", "Function UTGame.GFxUIFrontEnd_TitleScreen.UT_ConsoleCommand")()); }
		}
	}
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
		ScriptString CampaignMap() { mixin(MGPC!(ScriptString, 432)()); }
		ScriptString InstantActionMap() { mixin(MGPC!(ScriptString, 420)()); }
		GFxClikWidget MenuBtn6MC() { mixin(MGPC!(GFxClikWidget, 416)()); }
		GFxClikWidget MenuBtn5MC() { mixin(MGPC!(GFxClikWidget, 412)()); }
		GFxClikWidget MenuBtn4MC() { mixin(MGPC!(GFxClikWidget, 408)()); }
		GFxClikWidget MenuBtn3MC() { mixin(MGPC!(GFxClikWidget, 404)()); }
		GFxClikWidget MenuBtn2MC() { mixin(MGPC!(GFxClikWidget, 400)()); }
		GFxClikWidget MenuBtn1MC() { mixin(MGPC!(GFxClikWidget, 396)()); }
		GFxObject BlackMC() { mixin(MGPC!(GFxObject, 392)()); }
		GFxObject MenuButtonsMC() { mixin(MGPC!(GFxObject, 388)()); }
		GFxObject MainMenuMC() { mixin(MGPC!(GFxObject, 384)()); }
		GFxObject TitleScreenMC() { mixin(MGPC!(GFxObject, 380)()); }
	}
final:
	bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(Functions.Start, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FilterButtonInput(int ControllerId, ScriptName ButtonName, UObject.EInputEvent InputEvent)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = ButtonName;
		*cast(UObject.EInputEvent*)&params[12] = InputEvent;
		(cast(ScriptObject)this).ProcessEvent(Functions.FilterButtonInput, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void OnMenuButtonPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMenuButtonPress, params.ptr, cast(void*)0);
	}
	void PlayCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCloseAnimation, cast(void*)0, cast(void*)0);
	}
	void OnCloseAnimationComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCloseAnimationComplete, cast(void*)0, cast(void*)0);
	}
	void UT_ConsoleCommand(ScriptString Cmd, bool bWriteToLog)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Cmd;
		*cast(bool*)&params[12] = bWriteToLog;
		(cast(ScriptObject)this).ProcessEvent(Functions.UT_ConsoleCommand, params.ptr, cast(void*)0);
	}
}
