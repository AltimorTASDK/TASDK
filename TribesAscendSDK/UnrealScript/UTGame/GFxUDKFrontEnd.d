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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd")); }
	private static __gshared GFxUDKFrontEnd mDefaultProperties;
	@property final static GFxUDKFrontEnd DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxUDKFrontEnd)("GFxUDKFrontEnd UTGame.Default__GFxUDKFrontEnd")); }
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
			ScriptFunction EscapeDelegate() { return mEscapeDelegate ? mEscapeDelegate : (mEscapeDelegate = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.EscapeDelegate")); }
			ScriptFunction Start() { return mStart ? mStart : (mStart = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.Start")); }
			ScriptFunction ConfigFrontEnd() { return mConfigFrontEnd ? mConfigFrontEnd : (mConfigFrontEnd = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.ConfigFrontEnd")); }
			ScriptFunction ASShowCursor() { return mASShowCursor ? mASShowCursor : (mASShowCursor = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.ASShowCursor")); }
			ScriptFunction LoadViews() { return mLoadViews ? mLoadViews : (mLoadViews = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.LoadViews")); }
			ScriptFunction LoadView() { return mLoadView ? mLoadView : (mLoadView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.LoadView")); }
			ScriptFunction LoadViewByName() { return mLoadViewByName ? mLoadViewByName : (mLoadViewByName = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.LoadViewByName")); }
			ScriptFunction IsViewLoaded() { return mIsViewLoaded ? mIsViewLoaded : (mIsViewLoaded = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.IsViewLoaded")); }
			ScriptFunction SetEscapeDelegate() { return mSetEscapeDelegate ? mSetEscapeDelegate : (mSetEscapeDelegate = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.SetEscapeDelegate")); }
			ScriptFunction PushViewByName() { return mPushViewByName ? mPushViewByName : (mPushViewByName = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.PushViewByName")); }
			ScriptFunction SpawnDialog() { return mSpawnDialog ? mSpawnDialog : (mSpawnDialog = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.SpawnDialog")); }
			ScriptFunction ConfigureTargetDialog() { return mConfigureTargetDialog ? mConfigureTargetDialog : (mConfigureTargetDialog = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.ConfigureTargetDialog")); }
			ScriptFunction ConfigureTargetView() { return mConfigureTargetView ? mConfigureTargetView : (mConfigureTargetView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.ConfigureTargetView")); }
			ScriptFunction IsViewAllowed() { return mIsViewAllowed ? mIsViewAllowed : (mIsViewAllowed = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.IsViewAllowed")); }
			ScriptFunction PushView() { return mPushView ? mPushView : (mPushView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.PushView")); }
			ScriptFunction PushDialogView() { return mPushDialogView ? mPushDialogView : (mPushDialogView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.PushDialogView")); }
			ScriptFunction SetSelectionFocus() { return mSetSelectionFocus ? mSetSelectionFocus : (mSetSelectionFocus = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.SetSelectionFocus")); }
			ScriptFunction ASSetSelectionFocus() { return mASSetSelectionFocus ? mASSetSelectionFocus : (mASSetSelectionFocus = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.ASSetSelectionFocus")); }
			ScriptFunction PopView() { return mPopView ? mPopView : (mPopView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.PopView")); }
			ScriptFunction PopViewStub() { return mPopViewStub ? mPopViewStub : (mPopViewStub = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.PopViewStub")); }
			ScriptFunction UpdateViewLayout() { return mUpdateViewLayout ? mUpdateViewLayout : (mUpdateViewLayout = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.UpdateViewLayout")); }
			ScriptFunction ConfigureView() { return mConfigureView ? mConfigureView : (mConfigureView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.ConfigureView")); }
			ScriptFunction PostWidgetInit() { return mPostWidgetInit ? mPostWidgetInit : (mPostWidgetInit = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.PostWidgetInit")); }
			ScriptFunction CheckLinkConnectionAndError() { return mCheckLinkConnectionAndError ? mCheckLinkConnectionAndError : (mCheckLinkConnectionAndError = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.CheckLinkConnectionAndError")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.WidgetInitialized")); }
			ScriptFunction LoadDependantViews() { return mLoadDependantViews ? mLoadDependantViews : (mLoadDependantViews = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.LoadDependantViews")); }
			ScriptFunction DestroyDependantViews() { return mDestroyDependantViews ? mDestroyDependantViews : (mDestroyDependantViews = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd.DestroyDependantViews")); }
		}
	}
	struct ViewInfo
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.GFxUDKFrontEnd.ViewInfo")); }
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
