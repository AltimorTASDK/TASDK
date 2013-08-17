module UnrealScript.UTGame.GFxUI_PauseMenu;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGFxTweenableMoviePlayer;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUI_PauseMenu : UTGFxTweenableMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.GFxUI_PauseMenu")); }
	private static __gshared GFxUI_PauseMenu mDefaultProperties;
	@property final static GFxUI_PauseMenu DefaultProperties() { mixin(MGDPC("GFxUI_PauseMenu", "GFxUI_PauseMenu UTGame.Default__GFxUI_PauseMenu")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mStart;
			ScriptFunction mOnPressResumeButton;
			ScriptFunction mOnPressExitButton;
			ScriptFunction mPlayOpenAnimation;
			ScriptFunction mPlayCloseAnimation;
			ScriptFunction mOnPlayAnimationComplete;
			ScriptFunction mOnCloseAnimationComplete;
			ScriptFunction mUT_ConsoleCommand;
		}
		public @property static final
		{
			ScriptFunction Start() { mixin(MGF("mStart", "Function UTGame.GFxUI_PauseMenu.Start")); }
			ScriptFunction OnPressResumeButton() { mixin(MGF("mOnPressResumeButton", "Function UTGame.GFxUI_PauseMenu.OnPressResumeButton")); }
			ScriptFunction OnPressExitButton() { mixin(MGF("mOnPressExitButton", "Function UTGame.GFxUI_PauseMenu.OnPressExitButton")); }
			ScriptFunction PlayOpenAnimation() { mixin(MGF("mPlayOpenAnimation", "Function UTGame.GFxUI_PauseMenu.PlayOpenAnimation")); }
			ScriptFunction PlayCloseAnimation() { mixin(MGF("mPlayCloseAnimation", "Function UTGame.GFxUI_PauseMenu.PlayCloseAnimation")); }
			ScriptFunction OnPlayAnimationComplete() { mixin(MGF("mOnPlayAnimationComplete", "Function UTGame.GFxUI_PauseMenu.OnPlayAnimationComplete")); }
			ScriptFunction OnCloseAnimationComplete() { mixin(MGF("mOnCloseAnimationComplete", "Function UTGame.GFxUI_PauseMenu.OnCloseAnimationComplete")); }
			ScriptFunction UT_ConsoleCommand() { mixin(MGF("mUT_ConsoleCommand", "Function UTGame.GFxUI_PauseMenu.UT_ConsoleCommand")); }
		}
	}
	@property final auto ref
	{
		ScriptString ExitString() { mixin(MGPC("ScriptString", 436)); }
		ScriptString ResumeString() { mixin(MGPC("ScriptString", 424)); }
		GFxClikWidget Btn_ExitMC() { mixin(MGPC("GFxClikWidget", 420)); }
		GFxClikWidget Btn_ResumeMC() { mixin(MGPC("GFxClikWidget", 416)); }
		GFxObject Btn_Family_Wrapper() { mixin(MGPC("GFxObject", 412)); }
		GFxObject Btn_Exit_Wrapper() { mixin(MGPC("GFxObject", 408)); }
		GFxObject Btn_Resume_Wrapper() { mixin(MGPC("GFxObject", 404)); }
		GFxObject OverlayMC() { mixin(MGPC("GFxObject", 400)); }
		GFxObject PauseMC() { mixin(MGPC("GFxObject", 396)); }
		GFxObject RootMC() { mixin(MGPC("GFxObject", 392)); }
	}
final:
	bool Start(bool* StartPaused = null)
	{
		ubyte params[8];
		params[] = 0;
		if (StartPaused !is null)
			*cast(bool*)params.ptr = *StartPaused;
		(cast(ScriptObject)this).ProcessEvent(Functions.Start, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnPressResumeButton(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPressResumeButton, params.ptr, cast(void*)0);
	}
	void OnPressExitButton(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPressExitButton, params.ptr, cast(void*)0);
	}
	void PlayOpenAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayOpenAnimation, cast(void*)0, cast(void*)0);
	}
	void PlayCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCloseAnimation, cast(void*)0, cast(void*)0);
	}
	void OnPlayAnimationComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPlayAnimationComplete, cast(void*)0, cast(void*)0);
	}
	void OnCloseAnimationComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCloseAnimationComplete, cast(void*)0, cast(void*)0);
	}
	void UT_ConsoleCommand(ScriptString Cmd, bool* bWriteToLog = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Cmd;
		if (bWriteToLog !is null)
			*cast(bool*)&params[12] = *bWriteToLog;
		(cast(ScriptObject)this).ProcessEvent(Functions.UT_ConsoleCommand, params.ptr, cast(void*)0);
	}
}
