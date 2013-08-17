module UnrealScript.UTGame.GFxUDKFrontEnd_MainMenu;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_MainMenu : GFxUDKFrontEnd_Screen
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.GFxUDKFrontEnd_MainMenu")); }
	private static __gshared GFxUDKFrontEnd_MainMenu mDefaultProperties;
	@property final static GFxUDKFrontEnd_MainMenu DefaultProperties() { mixin(MGDPC("GFxUDKFrontEnd_MainMenu", "GFxUDKFrontEnd_MainMenu UTGame.Default__GFxUDKFrontEnd_MainMenu")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnViewLoaded;
			ScriptFunction mOnTopMostView;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mSelect_InstantAction;
			ScriptFunction mSelect_Multiplayer;
			ScriptFunction mSelect_ExitGame;
			ScriptFunction mExitDialog_SelectOK;
			ScriptFunction mExitDialog_SelectBack;
			ScriptFunction mOnListItemPress;
			ScriptFunction mOnListChange;
			ScriptFunction mUpdateDescription;
			ScriptFunction mUpdateListDataProvider;
			ScriptFunction mSetList;
			ScriptFunction mOnEscapeKeyPress;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction OnViewLoaded() { mixin(MGF("mOnViewLoaded", "Function UTGame.GFxUDKFrontEnd_MainMenu.OnViewLoaded")); }
			ScriptFunction OnTopMostView() { mixin(MGF("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_MainMenu.OnTopMostView")); }
			ScriptFunction DisableSubComponents() { mixin(MGF("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_MainMenu.DisableSubComponents")); }
			ScriptFunction Select_InstantAction() { mixin(MGF("mSelect_InstantAction", "Function UTGame.GFxUDKFrontEnd_MainMenu.Select_InstantAction")); }
			ScriptFunction Select_Multiplayer() { mixin(MGF("mSelect_Multiplayer", "Function UTGame.GFxUDKFrontEnd_MainMenu.Select_Multiplayer")); }
			ScriptFunction Select_ExitGame() { mixin(MGF("mSelect_ExitGame", "Function UTGame.GFxUDKFrontEnd_MainMenu.Select_ExitGame")); }
			ScriptFunction ExitDialog_SelectOK() { mixin(MGF("mExitDialog_SelectOK", "Function UTGame.GFxUDKFrontEnd_MainMenu.ExitDialog_SelectOK")); }
			ScriptFunction ExitDialog_SelectBack() { mixin(MGF("mExitDialog_SelectBack", "Function UTGame.GFxUDKFrontEnd_MainMenu.ExitDialog_SelectBack")); }
			ScriptFunction OnListItemPress() { mixin(MGF("mOnListItemPress", "Function UTGame.GFxUDKFrontEnd_MainMenu.OnListItemPress")); }
			ScriptFunction OnListChange() { mixin(MGF("mOnListChange", "Function UTGame.GFxUDKFrontEnd_MainMenu.OnListChange")); }
			ScriptFunction UpdateDescription() { mixin(MGF("mUpdateDescription", "Function UTGame.GFxUDKFrontEnd_MainMenu.UpdateDescription")); }
			ScriptFunction UpdateListDataProvider() { mixin(MGF("mUpdateListDataProvider", "Function UTGame.GFxUDKFrontEnd_MainMenu.UpdateListDataProvider")); }
			ScriptFunction SetList() { mixin(MGF("mSetList", "Function UTGame.GFxUDKFrontEnd_MainMenu.SetList")); }
			ScriptFunction OnEscapeKeyPress() { mixin(MGF("mOnEscapeKeyPress", "Function UTGame.GFxUDKFrontEnd_MainMenu.OnEscapeKeyPress")); }
			ScriptFunction WidgetInitialized() { mixin(MGF("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_MainMenu.WidgetInitialized")); }
		}
	}
	struct Option
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.GFxUDKFrontEnd_MainMenu.Option")); }
		@property final auto ref
		{
			ScriptString OptionDesc() { mixin(MGPS("ScriptString", 24)); }
			ScriptString OptionLabel() { mixin(MGPS("ScriptString", 12)); }
			ScriptString OptionName() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	@property final auto ref
	{
		GFxClikWidget ListMC() { mixin(MGPC("GFxClikWidget", 232)); }
		ScriptArray!(GFxUDKFrontEnd_MainMenu.Option) ListOptions() { mixin(MGPC("ScriptArray!(GFxUDKFrontEnd_MainMenu.Option)", 220)); }
		ubyte LastSelectedIndex() { mixin(MGPC("ubyte", 248)); }
		GFxObject UserNameTxt() { mixin(MGPC("GFxObject", 244)); }
		GFxObject UserLabelTxt() { mixin(MGPC("GFxObject", 240)); }
		GFxObject ListDataProvider() { mixin(MGPC("GFxObject", 236)); }
	}
final:
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewLoaded, cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool* bPlayOpenAnimation = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bPlayOpenAnimation !is null)
			*cast(bool*)params.ptr = *bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTopMostView, params.ptr, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableSubComponents, params.ptr, cast(void*)0);
	}
	void Select_InstantAction()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Select_InstantAction, cast(void*)0, cast(void*)0);
	}
	void Select_Multiplayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Select_Multiplayer, cast(void*)0, cast(void*)0);
	}
	void Select_ExitGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Select_ExitGame, cast(void*)0, cast(void*)0);
	}
	void ExitDialog_SelectOK(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitDialog_SelectOK, params.ptr, cast(void*)0);
	}
	void ExitDialog_SelectBack(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitDialog_SelectBack, params.ptr, cast(void*)0);
	}
	void OnListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnListItemPress, params.ptr, cast(void*)0);
	}
	void OnListChange(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnListChange, params.ptr, cast(void*)0);
	}
	void UpdateDescription()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDescription, cast(void*)0, cast(void*)0);
	}
	void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateListDataProvider, cast(void*)0, cast(void*)0);
	}
	void SetList(GFxObject InList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = InList;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetList, params.ptr, cast(void*)0);
	}
	void OnEscapeKeyPress()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEscapeKeyPress, cast(void*)0, cast(void*)0);
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
}
