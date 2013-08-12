module UnrealScript.UTGame.GFxUDKFrontEnd_GameMode;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_GameMode")); }
	private static __gshared GFxUDKFrontEnd_GameMode mDefaultProperties;
	@property final static GFxUDKFrontEnd_GameMode DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxUDKFrontEnd_GameMode)("GFxUDKFrontEnd_GameMode UTGame.Default__GFxUDKFrontEnd_GameMode")); }
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
			ScriptFunction OnViewLoaded() { return mOnViewLoaded ? mOnViewLoaded : (mOnViewLoaded = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_GameMode.OnViewLoaded")); }
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_GameMode.OnTopMostView")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_GameMode.DisableSubComponents")); }
			ScriptFunction OnGameModeSelected() { return mOnGameModeSelected ? mOnGameModeSelected : (mOnGameModeSelected = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_GameMode.OnGameModeSelected")); }
			ScriptFunction OnGameModeChange() { return mOnGameModeChange ? mOnGameModeChange : (mOnGameModeChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_GameMode.OnGameModeChange")); }
			ScriptFunction OnListItemPress() { return mOnListItemPress ? mOnListItemPress : (mOnListItemPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_GameMode.OnListItemPress")); }
			ScriptFunction OnListChange() { return mOnListChange ? mOnListChange : (mOnListChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_GameMode.OnListChange")); }
			ScriptFunction UpdateDescription() { return mUpdateDescription ? mUpdateDescription : (mUpdateDescription = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_GameMode.UpdateDescription")); }
			ScriptFunction UpdateListDataProvider() { return mUpdateListDataProvider ? mUpdateListDataProvider : (mUpdateListDataProvider = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_GameMode.UpdateListDataProvider")); }
			ScriptFunction SetImgScroller() { return mSetImgScroller ? mSetImgScroller : (mSetImgScroller = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_GameMode.SetImgScroller")); }
			ScriptFunction ASSetList() { return mASSetList ? mASSetList : (mASSetList = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_GameMode.ASSetList")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_GameMode.WidgetInitialized")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTUIDataProvider_GameModeInfo) GameModeList() { return *cast(ScriptArray!(UTUIDataProvider_GameModeInfo)*)(cast(size_t)cast(void*)this + 268); }
		GFxClikWidget ImgScrollerMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 264); }
		GFxObject MenuMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 260); }
		GFxObject ListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 256); }
		GFxClikWidget ListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 252); }
		ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 240); }
		ScriptString GameMode() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 228); }
		UTUIDataStore_StringList StringListDataStore() { return *cast(UTUIDataStore_StringList*)(cast(size_t)cast(void*)this + 224); }
		UIDataStore_OnlineGameSettings SettingsDataStore() { return *cast(UIDataStore_OnlineGameSettings*)(cast(size_t)cast(void*)this + 220); }
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
