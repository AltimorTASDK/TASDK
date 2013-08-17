module UnrealScript.UTGame.GFxUDKFrontEnd_GameMode;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore_OnlineGameSettings;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.UTGame.UTUIDataProvider_GameModeInfo;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.UTGame.UTUIDataStore_StringList;

extern(C++) interface GFxUDKFrontEnd_GameMode : GFxUDKFrontEnd_Screen
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_GameMode")()); }
	private static __gshared GFxUDKFrontEnd_GameMode mDefaultProperties;
	@property final static GFxUDKFrontEnd_GameMode DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_GameMode, "GFxUDKFrontEnd_GameMode UTGame.Default__GFxUDKFrontEnd_GameMode")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnViewLoaded;
			ScriptFunction mOnTopMostView;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mOnGameModeSelected;
			ScriptFunction mOnGameModeChange;
			ScriptFunction mOnListItemPress;
			ScriptFunction mOnListChange;
			ScriptFunction mUpdateDescription;
			ScriptFunction mUpdateListDataProvider;
			ScriptFunction mSetImgScroller;
			ScriptFunction mASSetList;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction OnViewLoaded() { mixin(MGF!("mOnViewLoaded", "Function UTGame.GFxUDKFrontEnd_GameMode.OnViewLoaded")()); }
			ScriptFunction OnTopMostView() { mixin(MGF!("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_GameMode.OnTopMostView")()); }
			ScriptFunction DisableSubComponents() { mixin(MGF!("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_GameMode.DisableSubComponents")()); }
			ScriptFunction OnGameModeSelected() { mixin(MGF!("mOnGameModeSelected", "Function UTGame.GFxUDKFrontEnd_GameMode.OnGameModeSelected")()); }
			ScriptFunction OnGameModeChange() { mixin(MGF!("mOnGameModeChange", "Function UTGame.GFxUDKFrontEnd_GameMode.OnGameModeChange")()); }
			ScriptFunction OnListItemPress() { mixin(MGF!("mOnListItemPress", "Function UTGame.GFxUDKFrontEnd_GameMode.OnListItemPress")()); }
			ScriptFunction OnListChange() { mixin(MGF!("mOnListChange", "Function UTGame.GFxUDKFrontEnd_GameMode.OnListChange")()); }
			ScriptFunction UpdateDescription() { mixin(MGF!("mUpdateDescription", "Function UTGame.GFxUDKFrontEnd_GameMode.UpdateDescription")()); }
			ScriptFunction UpdateListDataProvider() { mixin(MGF!("mUpdateListDataProvider", "Function UTGame.GFxUDKFrontEnd_GameMode.UpdateListDataProvider")()); }
			ScriptFunction SetImgScroller() { mixin(MGF!("mSetImgScroller", "Function UTGame.GFxUDKFrontEnd_GameMode.SetImgScroller")()); }
			ScriptFunction ASSetList() { mixin(MGF!("mASSetList", "Function UTGame.GFxUDKFrontEnd_GameMode.ASSetList")()); }
			ScriptFunction WidgetInitialized() { mixin(MGF!("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_GameMode.WidgetInitialized")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTUIDataProvider_GameModeInfo) GameModeList() { mixin(MGPC!(ScriptArray!(UTUIDataProvider_GameModeInfo), 268)()); }
		GFxClikWidget ImgScrollerMC() { mixin(MGPC!(GFxClikWidget, 264)()); }
		GFxObject MenuMC() { mixin(MGPC!(GFxObject, 260)()); }
		GFxObject ListDataProvider() { mixin(MGPC!(GFxObject, 256)()); }
		GFxClikWidget ListMC() { mixin(MGPC!(GFxClikWidget, 252)()); }
		ScriptString MapName() { mixin(MGPC!(ScriptString, 240)()); }
		ScriptString GameMode() { mixin(MGPC!(ScriptString, 228)()); }
		UTUIDataStore_StringList StringListDataStore() { mixin(MGPC!(UTUIDataStore_StringList, 224)()); }
		UIDataStore_OnlineGameSettings SettingsDataStore() { mixin(MGPC!(UIDataStore_OnlineGameSettings, 220)()); }
	}
final:
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewLoaded, cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTopMostView, params.ptr, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableSubComponents, params.ptr, cast(void*)0);
	}
	void OnGameModeSelected(ScriptString InGameMode, ScriptString InDefaultMap, ScriptString InGameSettingsClass)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InGameMode;
		*cast(ScriptString*)&params[12] = InDefaultMap;
		*cast(ScriptString*)&params[24] = InGameSettingsClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameModeSelected, params.ptr, cast(void*)0);
	}
	void OnGameModeChange(int SelectedIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SelectedIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameModeChange, params.ptr, cast(void*)0);
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
	void SetImgScroller(GFxClikWidget InImgScroller)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxClikWidget*)params.ptr = InImgScroller;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetImgScroller, params.ptr, cast(void*)0);
	}
	void ASSetList(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASSetList, params.ptr, cast(void*)0);
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
