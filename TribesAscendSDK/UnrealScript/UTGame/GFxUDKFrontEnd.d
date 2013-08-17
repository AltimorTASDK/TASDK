module UnrealScript.UTGame.GFxUDKFrontEnd;

import ScriptClasses;
import UnrealScript.Helpers;
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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd")()); }
	private static __gshared GFxUDKFrontEnd mDefaultProperties;
	@property final static GFxUDKFrontEnd DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd, "GFxUDKFrontEnd UTGame.Default__GFxUDKFrontEnd")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mEscapeDelegate;
			ScriptFunction mStart;
			ScriptFunction mConfigFrontEnd;
			ScriptFunction mASShowCursor;
			ScriptFunction mLoadViews;
			ScriptFunction mLoadView;
			ScriptFunction mLoadViewByName;
			ScriptFunction mIsViewLoaded;
			ScriptFunction mSetEscapeDelegate;
			ScriptFunction mPushViewByName;
			ScriptFunction mSpawnDialog;
			ScriptFunction mConfigureTargetDialog;
			ScriptFunction mConfigureTargetView;
			ScriptFunction mIsViewAllowed;
			ScriptFunction mPushView;
			ScriptFunction mPushDialogView;
			ScriptFunction mSetSelectionFocus;
			ScriptFunction mASSetSelectionFocus;
			ScriptFunction mPopView;
			ScriptFunction mPopViewStub;
			ScriptFunction mUpdateViewLayout;
			ScriptFunction mConfigureView;
			ScriptFunction mPostWidgetInit;
			ScriptFunction mCheckLinkConnectionAndError;
			ScriptFunction mWidgetInitialized;
			ScriptFunction mLoadDependantViews;
			ScriptFunction mDestroyDependantViews;
		}
		public @property static final
		{
			ScriptFunction EscapeDelegate() { mixin(MGF!("mEscapeDelegate", "Function UTGame.GFxUDKFrontEnd.EscapeDelegate")()); }
			ScriptFunction Start() { mixin(MGF!("mStart", "Function UTGame.GFxUDKFrontEnd.Start")()); }
			ScriptFunction ConfigFrontEnd() { mixin(MGF!("mConfigFrontEnd", "Function UTGame.GFxUDKFrontEnd.ConfigFrontEnd")()); }
			ScriptFunction ASShowCursor() { mixin(MGF!("mASShowCursor", "Function UTGame.GFxUDKFrontEnd.ASShowCursor")()); }
			ScriptFunction LoadViews() { mixin(MGF!("mLoadViews", "Function UTGame.GFxUDKFrontEnd.LoadViews")()); }
			ScriptFunction LoadView() { mixin(MGF!("mLoadView", "Function UTGame.GFxUDKFrontEnd.LoadView")()); }
			ScriptFunction LoadViewByName() { mixin(MGF!("mLoadViewByName", "Function UTGame.GFxUDKFrontEnd.LoadViewByName")()); }
			ScriptFunction IsViewLoaded() { mixin(MGF!("mIsViewLoaded", "Function UTGame.GFxUDKFrontEnd.IsViewLoaded")()); }
			ScriptFunction SetEscapeDelegate() { mixin(MGF!("mSetEscapeDelegate", "Function UTGame.GFxUDKFrontEnd.SetEscapeDelegate")()); }
			ScriptFunction PushViewByName() { mixin(MGF!("mPushViewByName", "Function UTGame.GFxUDKFrontEnd.PushViewByName")()); }
			ScriptFunction SpawnDialog() { mixin(MGF!("mSpawnDialog", "Function UTGame.GFxUDKFrontEnd.SpawnDialog")()); }
			ScriptFunction ConfigureTargetDialog() { mixin(MGF!("mConfigureTargetDialog", "Function UTGame.GFxUDKFrontEnd.ConfigureTargetDialog")()); }
			ScriptFunction ConfigureTargetView() { mixin(MGF!("mConfigureTargetView", "Function UTGame.GFxUDKFrontEnd.ConfigureTargetView")()); }
			ScriptFunction IsViewAllowed() { mixin(MGF!("mIsViewAllowed", "Function UTGame.GFxUDKFrontEnd.IsViewAllowed")()); }
			ScriptFunction PushView() { mixin(MGF!("mPushView", "Function UTGame.GFxUDKFrontEnd.PushView")()); }
			ScriptFunction PushDialogView() { mixin(MGF!("mPushDialogView", "Function UTGame.GFxUDKFrontEnd.PushDialogView")()); }
			ScriptFunction SetSelectionFocus() { mixin(MGF!("mSetSelectionFocus", "Function UTGame.GFxUDKFrontEnd.SetSelectionFocus")()); }
			ScriptFunction ASSetSelectionFocus() { mixin(MGF!("mASSetSelectionFocus", "Function UTGame.GFxUDKFrontEnd.ASSetSelectionFocus")()); }
			ScriptFunction PopView() { mixin(MGF!("mPopView", "Function UTGame.GFxUDKFrontEnd.PopView")()); }
			ScriptFunction PopViewStub() { mixin(MGF!("mPopViewStub", "Function UTGame.GFxUDKFrontEnd.PopViewStub")()); }
			ScriptFunction UpdateViewLayout() { mixin(MGF!("mUpdateViewLayout", "Function UTGame.GFxUDKFrontEnd.UpdateViewLayout")()); }
			ScriptFunction ConfigureView() { mixin(MGF!("mConfigureView", "Function UTGame.GFxUDKFrontEnd.ConfigureView")()); }
			ScriptFunction PostWidgetInit() { mixin(MGF!("mPostWidgetInit", "Function UTGame.GFxUDKFrontEnd.PostWidgetInit")()); }
			ScriptFunction CheckLinkConnectionAndError() { mixin(MGF!("mCheckLinkConnectionAndError", "Function UTGame.GFxUDKFrontEnd.CheckLinkConnectionAndError")()); }
			ScriptFunction WidgetInitialized() { mixin(MGF!("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd.WidgetInitialized")()); }
			ScriptFunction LoadDependantViews() { mixin(MGF!("mLoadDependantViews", "Function UTGame.GFxUDKFrontEnd.LoadDependantViews")()); }
			ScriptFunction DestroyDependantViews() { mixin(MGF!("mDestroyDependantViews", "Function UTGame.GFxUDKFrontEnd.DestroyDependantViews")()); }
		}
	}
	struct ViewInfo
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.GFxUDKFrontEnd.ViewInfo")()); }
		@property final auto ref
		{
			ScriptArray!(ScriptName) DependantViews() { mixin(MGPS!(ScriptArray!(ScriptName), 20)()); }
			ScriptString SWFName() { mixin(MGPS!(ScriptString, 8)()); }
			ScriptName ViewName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GFxUDKFrontEnd.ViewInfo) ViewData() { mixin(MGPC!(ScriptArray!(GFxUDKFrontEnd.ViewInfo), 452)()); }
			ScriptArray!(GFxUDKFrontEnd_View) ViewStack() { mixin(MGPC!(ScriptArray!(GFxUDKFrontEnd_View), 464)()); }
			ScriptArray!(ScriptName) LoadedViews() { mixin(MGPC!(ScriptArray!(ScriptName), 476)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__EscapeDelegate__Delegate'!
			GFxUDKFrontEnd_PasswordDialog PasswordDialog() { mixin(MGPC!(GFxUDKFrontEnd_PasswordDialog, 448)()); }
			GFxUDKFrontEnd_ErrorDialog ErrorDialog() { mixin(MGPC!(GFxUDKFrontEnd_ErrorDialog, 444)()); }
			GFxUDKFrontEnd_JoinDialog JoinDialog() { mixin(MGPC!(GFxUDKFrontEnd_JoinDialog, 440)()); }
			GFxUDKFrontEnd_FilterDialog FilterDialog() { mixin(MGPC!(GFxUDKFrontEnd_FilterDialog, 436)()); }
			GFxUDKFrontEnd_InfoDialog InfoDialog() { mixin(MGPC!(GFxUDKFrontEnd_InfoDialog, 432)()); }
			GFxUDKFrontEnd_JoinGame JoinGameView() { mixin(MGPC!(GFxUDKFrontEnd_JoinGame, 428)()); }
			GFxUDKFrontEnd_ServerSettings ServerSettingsView() { mixin(MGPC!(GFxUDKFrontEnd_ServerSettings, 424)()); }
			GFxUDKFrontEnd_Settings SettingsView() { mixin(MGPC!(GFxUDKFrontEnd_Settings, 420)()); }
			GFxUDKFrontEnd_Mutators MutatorsView() { mixin(MGPC!(GFxUDKFrontEnd_Mutators, 416)()); }
			GFxUDKFrontEnd_GameMode GameModeView() { mixin(MGPC!(GFxUDKFrontEnd_GameMode, 412)()); }
			GFxUDKFrontEnd_MapSelect MapSelectView() { mixin(MGPC!(GFxUDKFrontEnd_MapSelect, 408)()); }
			GFxUDKFrontEnd_HostGame HostGameView() { mixin(MGPC!(GFxUDKFrontEnd_HostGame, 404)()); }
			GFxUDKFrontEnd_Multiplayer MultiplayerView() { mixin(MGPC!(GFxUDKFrontEnd_Multiplayer, 400)()); }
			GFxUDKFrontEnd_InstantAction InstantActionView() { mixin(MGPC!(GFxUDKFrontEnd_InstantAction, 396)()); }
			GFxUDKFrontEnd_MainMenu MainMenuView() { mixin(MGPC!(GFxUDKFrontEnd_MainMenu, 392)()); }
			GFxObject ManagerMC() { mixin(MGPC!(GFxObject, 384)()); }
			GFxObject RootMC() { mixin(MGPC!(GFxObject, 380)()); }
		}
		bool bInitialized() { mixin(MGBPC!(388, 0x1)()); }
		bool bInitialized(bool val) { mixin(MSBPC!(388, 0x1)()); }
	}
final:
	void EscapeDelegate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EscapeDelegate, cast(void*)0, cast(void*)0);
	}
	bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(Functions.Start, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ConfigFrontEnd()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ConfigFrontEnd, cast(void*)0, cast(void*)0);
	}
	void ASShowCursor(bool bShowCursor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShowCursor;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASShowCursor, params.ptr, cast(void*)0);
	}
	void LoadViews()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadViews, cast(void*)0, cast(void*)0);
	}
	void LoadView(GFxUDKFrontEnd.ViewInfo InViewInfo)
	{
		ubyte params[32];
		params[] = 0;
		*cast(GFxUDKFrontEnd.ViewInfo*)params.ptr = InViewInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadView, params.ptr, cast(void*)0);
	}
	void LoadViewByName(ScriptName InViewName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InViewName;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadViewByName, params.ptr, cast(void*)0);
	}
	bool IsViewLoaded(ScriptName InViewName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InViewName;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsViewLoaded, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEscapeDelegate, params.ptr, cast(void*)0);
	}
	void PushViewByName(ScriptName TargetViewName, GFxUDKFrontEnd_Screen ParentView)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TargetViewName;
		*cast(GFxUDKFrontEnd_Screen*)&params[8] = ParentView;
		(cast(ScriptObject)this).ProcessEvent(Functions.PushViewByName, params.ptr, cast(void*)0);
	}
	GFxUDKFrontEnd_Dialog SpawnDialog(ScriptName TargetDialogName, GFxUDKFrontEnd_Screen ParentView)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TargetDialogName;
		*cast(GFxUDKFrontEnd_Screen*)&params[8] = ParentView;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnDialog, params.ptr, cast(void*)0);
		return *cast(GFxUDKFrontEnd_Dialog*)&params[12];
	}
	void ConfigureTargetDialog(GFxUDKFrontEnd_View TargetDialog)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxUDKFrontEnd_View*)params.ptr = TargetDialog;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConfigureTargetDialog, params.ptr, cast(void*)0);
	}
	void ConfigureTargetView(GFxUDKFrontEnd_View TargetView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxUDKFrontEnd_View*)params.ptr = TargetView;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConfigureTargetView, params.ptr, cast(void*)0);
	}
	bool IsViewAllowed(GFxUDKFrontEnd_View TargetView)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxUDKFrontEnd_View*)params.ptr = TargetView;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsViewAllowed, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PushView(GFxUDKFrontEnd_View TargetView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxUDKFrontEnd_View*)params.ptr = TargetView;
		(cast(ScriptObject)this).ProcessEvent(Functions.PushView, params.ptr, cast(void*)0);
	}
	void PushDialogView(GFxUDKFrontEnd_View dialogView)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxUDKFrontEnd_View*)params.ptr = dialogView;
		(cast(ScriptObject)this).ProcessEvent(Functions.PushDialogView, params.ptr, cast(void*)0);
	}
	void SetSelectionFocus(GFxObject MovieClip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = MovieClip;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSelectionFocus, params.ptr, cast(void*)0);
	}
	void ASSetSelectionFocus(GFxObject MovieClip)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = MovieClip;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASSetSelectionFocus, params.ptr, cast(void*)0);
	}
	GFxObject PopView()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopView, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	GFxObject PopViewStub()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopViewStub, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	void UpdateViewLayout()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateViewLayout, cast(void*)0, cast(void*)0);
	}
	void ConfigureView(GFxUDKFrontEnd_View InView, ScriptName WidgetName, ScriptName WidgetPath)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GFxUDKFrontEnd_View*)params.ptr = InView;
		*cast(ScriptName*)&params[4] = WidgetName;
		*cast(ScriptName*)&params[12] = WidgetPath;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConfigureView, params.ptr, cast(void*)0);
	}
	void PostWidgetInit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostWidgetInit, cast(void*)0, cast(void*)0);
	}
	bool CheckLinkConnectionAndError(ScriptString AlternateTitle, ScriptString AlternateMessage)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = AlternateTitle;
		*cast(ScriptString*)&params[12] = AlternateMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckLinkConnectionAndError, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(Functions.WidgetInitialized, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void LoadDependantViews(ScriptName InViewName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InViewName;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadDependantViews, params.ptr, cast(void*)0);
	}
	void DestroyDependantViews(ScriptName InViewName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InViewName;
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyDependantViews, params.ptr, cast(void*)0);
	}
}
