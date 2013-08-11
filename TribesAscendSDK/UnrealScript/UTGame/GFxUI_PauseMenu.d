module UnrealScript.UTGame.GFxUI_PauseMenu;

import ScriptClasses;
import UnrealScript.UTGame.UTGFxTweenableMoviePlayer;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUI_PauseMenu : UTGFxTweenableMoviePlayer
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39099], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnPressResumeButton(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39102], params.ptr, cast(void*)0);
	}
	void OnPressExitButton(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39104], params.ptr, cast(void*)0);
	}
	void PlayOpenAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39106], cast(void*)0, cast(void*)0);
	}
	void PlayCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39107], cast(void*)0, cast(void*)0);
	}
	void OnPlayAnimationComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39108], cast(void*)0, cast(void*)0);
	}
	void OnCloseAnimationComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39109], cast(void*)0, cast(void*)0);
	}
	void UT_ConsoleCommand(ScriptString Cmd, bool bWriteToLog)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Cmd;
		*cast(bool*)&params[12] = bWriteToLog;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39110], params.ptr, cast(void*)0);
	}
}
