module UnrealScript.UTGame.GFxUI_PauseMenu;

import ScriptClasses;
import UnrealScript.UTGame.UTGFxTweenableMoviePlayer;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUI_PauseMenu : UTGFxTweenableMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUI_PauseMenu")); }
	private static __gshared GFxUI_PauseMenu mDefaultProperties;
	@property final static GFxUI_PauseMenu DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxUI_PauseMenu)("GFxUI_PauseMenu UTGame.Default__GFxUI_PauseMenu")); }
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
			ScriptFunction Start() { return mStart ? mStart : (mStart = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUI_PauseMenu.Start")); }
			ScriptFunction OnPressResumeButton() { return mOnPressResumeButton ? mOnPressResumeButton : (mOnPressResumeButton = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUI_PauseMenu.OnPressResumeButton")); }
			ScriptFunction OnPressExitButton() { return mOnPressExitButton ? mOnPressExitButton : (mOnPressExitButton = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUI_PauseMenu.OnPressExitButton")); }
			ScriptFunction PlayOpenAnimation() { return mPlayOpenAnimation ? mPlayOpenAnimation : (mPlayOpenAnimation = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUI_PauseMenu.PlayOpenAnimation")); }
			ScriptFunction PlayCloseAnimation() { return mPlayCloseAnimation ? mPlayCloseAnimation : (mPlayCloseAnimation = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUI_PauseMenu.PlayCloseAnimation")); }
			ScriptFunction OnPlayAnimationComplete() { return mOnPlayAnimationComplete ? mOnPlayAnimationComplete : (mOnPlayAnimationComplete = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUI_PauseMenu.OnPlayAnimationComplete")); }
			ScriptFunction OnCloseAnimationComplete() { return mOnCloseAnimationComplete ? mOnCloseAnimationComplete : (mOnCloseAnimationComplete = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUI_PauseMenu.OnCloseAnimationComplete")); }
			ScriptFunction UT_ConsoleCommand() { return mUT_ConsoleCommand ? mUT_ConsoleCommand : (mUT_ConsoleCommand = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUI_PauseMenu.UT_ConsoleCommand")); }
		}
	}
	@property final auto ref
	{
		ScriptString ExitString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 436); }
		ScriptString ResumeString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 424); }
		GFxClikWidget Btn_ExitMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 420); }
		GFxClikWidget Btn_ResumeMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 416); }
		GFxObject Btn_Family_Wrapper() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 412); }
		GFxObject Btn_Exit_Wrapper() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 408); }
		GFxObject Btn_Resume_Wrapper() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 404); }
		GFxObject OverlayMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 400); }
		GFxObject PauseMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 396); }
		GFxObject RootMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 392); }
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
	void UT_ConsoleCommand(ScriptString Cmd, bool bWriteToLog)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Cmd;
		*cast(bool*)&params[12] = bWriteToLog;
		(cast(ScriptObject)this).ProcessEvent(Functions.UT_ConsoleCommand, params.ptr, cast(void*)0);
	}
}
