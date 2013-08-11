module UnrealScript.UTGame.GFxUDKFrontEnd;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_ErrorDialog;
import UnrealScript.UTGame.GFxUDKFrontEnd_Mutators;
import UnrealScript.UTGame.GFxUDKFrontEnd_MainMenu;
import UnrealScript.UTGame.GFxUDKFrontEnd_View;
import UnrealScript.UTGame.GFxUDKFrontEnd_Multiplayer;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.UTGame.GFxUDKFrontEnd_HostGame;
import UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;
import UnrealScript.UTGame.GFxUDKFrontEnd_InstantAction;
import UnrealScript.UTGame.GFxUDKFrontEnd_InfoDialog;
import UnrealScript.UTGame.GFxUDKFrontEnd_ServerSettings;
import UnrealScript.UTGame.GFxUDKFrontEnd_JoinGame;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.UTGame.GFxUDKFrontEnd_MapSelect;
import UnrealScript.UTGame.GFxUDKFrontEnd_GameMode;
import UnrealScript.UTGame.GFxUDKFrontEnd_FilterDialog;
import UnrealScript.UTGame.GFxUDKFrontEnd_Settings;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.UTGame.GFxUDKFrontEnd_JoinDialog;
import UnrealScript.UTGame.GFxUDKFrontEnd_PasswordDialog;

extern(C++) interface GFxUDKFrontEnd : GFxMoviePlayer
{
public extern(D):
	struct ViewInfo
	{
		private ubyte __buffer__[32];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(ScriptName) DependantViews() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 20); }
			ScriptString SWFName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
			ScriptName ViewName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GFxUDKFrontEnd.ViewInfo) ViewData() { return *cast(ScriptArray!(GFxUDKFrontEnd.ViewInfo)*)(cast(size_t)cast(void*)this + 452); }
			ScriptArray!(GFxUDKFrontEnd_View) ViewStack() { return *cast(ScriptArray!(GFxUDKFrontEnd_View)*)(cast(size_t)cast(void*)this + 464); }
			ScriptArray!(ScriptName) LoadedViews() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 476); }
			GFxUDKFrontEnd_PasswordDialog PasswordDialog() { return *cast(GFxUDKFrontEnd_PasswordDialog*)(cast(size_t)cast(void*)this + 448); }
			GFxUDKFrontEnd_ErrorDialog ErrorDialog() { return *cast(GFxUDKFrontEnd_ErrorDialog*)(cast(size_t)cast(void*)this + 444); }
			GFxUDKFrontEnd_JoinDialog JoinDialog() { return *cast(GFxUDKFrontEnd_JoinDialog*)(cast(size_t)cast(void*)this + 440); }
			GFxUDKFrontEnd_FilterDialog FilterDialog() { return *cast(GFxUDKFrontEnd_FilterDialog*)(cast(size_t)cast(void*)this + 436); }
			GFxUDKFrontEnd_InfoDialog InfoDialog() { return *cast(GFxUDKFrontEnd_InfoDialog*)(cast(size_t)cast(void*)this + 432); }
			GFxUDKFrontEnd_JoinGame JoinGameView() { return *cast(GFxUDKFrontEnd_JoinGame*)(cast(size_t)cast(void*)this + 428); }
			GFxUDKFrontEnd_ServerSettings ServerSettingsView() { return *cast(GFxUDKFrontEnd_ServerSettings*)(cast(size_t)cast(void*)this + 424); }
			GFxUDKFrontEnd_Settings SettingsView() { return *cast(GFxUDKFrontEnd_Settings*)(cast(size_t)cast(void*)this + 420); }
			GFxUDKFrontEnd_Mutators MutatorsView() { return *cast(GFxUDKFrontEnd_Mutators*)(cast(size_t)cast(void*)this + 416); }
			GFxUDKFrontEnd_GameMode GameModeView() { return *cast(GFxUDKFrontEnd_GameMode*)(cast(size_t)cast(void*)this + 412); }
			GFxUDKFrontEnd_MapSelect MapSelectView() { return *cast(GFxUDKFrontEnd_MapSelect*)(cast(size_t)cast(void*)this + 408); }
			GFxUDKFrontEnd_HostGame HostGameView() { return *cast(GFxUDKFrontEnd_HostGame*)(cast(size_t)cast(void*)this + 404); }
			GFxUDKFrontEnd_Multiplayer MultiplayerView() { return *cast(GFxUDKFrontEnd_Multiplayer*)(cast(size_t)cast(void*)this + 400); }
			GFxUDKFrontEnd_InstantAction InstantActionView() { return *cast(GFxUDKFrontEnd_InstantAction*)(cast(size_t)cast(void*)this + 396); }
			GFxUDKFrontEnd_MainMenu MainMenuView() { return *cast(GFxUDKFrontEnd_MainMenu*)(cast(size_t)cast(void*)this + 392); }
			GFxObject ManagerMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 384); }
			GFxObject RootMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 380); }
		}
		bool bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 388) & 0x1) != 0; }
		bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 388) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 388) &= ~0x1; } return val; }
	}
final:
	void EscapeDelegate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37740], cast(void*)0, cast(void*)0);
	}
	bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37782], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ConfigFrontEnd()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37785], cast(void*)0, cast(void*)0);
	}
	void ASShowCursor(bool bShowCursor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShowCursor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37786], params.ptr, cast(void*)0);
	}
	void LoadViews()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37787], cast(void*)0, cast(void*)0);
	}
	void LoadView(GFxUDKFrontEnd.ViewInfo InViewInfo)
	{
		ubyte params[32];
		params[] = 0;
		*cast(GFxUDKFrontEnd.ViewInfo*)params.ptr = InViewInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37789], params.ptr, cast(void*)0);
	}
	void LoadViewByName(ScriptName InViewName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InViewName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37796], params.ptr, cast(void*)0);
	}
	bool IsViewLoaded(ScriptName InViewName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InViewName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37799], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void SetEscapeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37803], params.ptr, cast(void*)0);
	}
	void PushViewByName(ScriptName TargetViewName, GFxUDKFrontEnd_Screen ParentView)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TargetViewName;
		*cast(GFxUDKFrontEnd_Screen*)&params[8] = ParentView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37806], params.ptr, cast(void*)0);
	}
	GFxUDKFrontEnd_Dialog SpawnDialog(ScriptName TargetDialogName, GFxUDKFrontEnd_Screen ParentView)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TargetDialogName;
		*cast(GFxUDKFrontEnd_Screen*)&params[8] = ParentView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37809], params.ptr, cast(void*)0);
		return *cast(GFxUDKFrontEnd_Dialog*)&params[12];
	}
	void ConfigureTargetDialog(GFxUDKFrontEnd_View TargetDialog)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxUDKFrontEnd_View*)params.ptr = TargetDialog;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37813], params.ptr, cast(void*)0);
	}
	void ConfigureTargetView(GFxUDKFrontEnd_View TargetView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxUDKFrontEnd_View*)params.ptr = TargetView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37815], params.ptr, cast(void*)0);
	}
	bool IsViewAllowed(GFxUDKFrontEnd_View TargetView)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxUDKFrontEnd_View*)params.ptr = TargetView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37817], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PushView(GFxUDKFrontEnd_View TargetView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxUDKFrontEnd_View*)params.ptr = TargetView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37823], params.ptr, cast(void*)0);
	}
	void PushDialogView(GFxUDKFrontEnd_View dialogView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxUDKFrontEnd_View*)params.ptr = dialogView;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37825], params.ptr, cast(void*)0);
	}
	void SetSelectionFocus(GFxObject MovieClip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = MovieClip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37827], params.ptr, cast(void*)0);
	}
	void ASSetSelectionFocus(GFxObject MovieClip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = MovieClip;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37829], params.ptr, cast(void*)0);
	}
	GFxObject PopView()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37831], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	GFxObject PopViewStub()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37833], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	void UpdateViewLayout()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37835], cast(void*)0, cast(void*)0);
	}
	void ConfigureView(GFxUDKFrontEnd_View InView, ScriptName WidgetName, ScriptName WidgetPath)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GFxUDKFrontEnd_View*)params.ptr = InView;
		*cast(ScriptName*)&params[4] = WidgetName;
		*cast(ScriptName*)&params[12] = WidgetPath;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37836], params.ptr, cast(void*)0);
	}
	void PostWidgetInit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37842], cast(void*)0, cast(void*)0);
	}
	bool CheckLinkConnectionAndError(ScriptString AlternateTitle, ScriptString AlternateMessage)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = AlternateTitle;
		*cast(ScriptString*)&params[12] = AlternateMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37843], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37851], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void LoadDependantViews(ScriptName InViewName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InViewName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37858], params.ptr, cast(void*)0);
	}
	void DestroyDependantViews(ScriptName InViewName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InViewName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37860], params.ptr, cast(void*)0);
	}
}
