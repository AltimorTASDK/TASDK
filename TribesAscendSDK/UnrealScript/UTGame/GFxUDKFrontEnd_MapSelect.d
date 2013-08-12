module UnrealScript.UTGame.GFxUDKFrontEnd_MapSelect;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.UTGame.UTUIDataProvider_MapInfo;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_MapSelect : GFxUDKFrontEnd_Screen
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_MapSelect")); }
	private static __gshared GFxUDKFrontEnd_MapSelect mDefaultProperties;
	@property final static GFxUDKFrontEnd_MapSelect DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxUDKFrontEnd_MapSelect)("GFxUDKFrontEnd_MapSelect UTGame.Default__GFxUDKFrontEnd_MapSelect")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetImageMarkupByMapName;
			ScriptFunction mOnViewLoaded;
			ScriptFunction mOnTopMostView;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mOnMapList_ValueChanged;
			ScriptFunction mSetList;
			ScriptFunction mOnListItemPress;
			ScriptFunction mUpdateListDataProvider;
			ScriptFunction mGetMapFriendlyName;
			ScriptFunction mSetImgScroller;
			ScriptFunction mGetCurrentGameMode;
			ScriptFunction mSetupMapCycle;
			ScriptFunction mGetSelectedMap;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction GetImageMarkupByMapName() { return mGetImageMarkupByMapName ? mGetImageMarkupByMapName : (mGetImageMarkupByMapName = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.GetImageMarkupByMapName")); }
			ScriptFunction OnViewLoaded() { return mOnViewLoaded ? mOnViewLoaded : (mOnViewLoaded = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.OnViewLoaded")); }
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.OnTopMostView")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.DisableSubComponents")); }
			ScriptFunction OnMapList_ValueChanged() { return mOnMapList_ValueChanged ? mOnMapList_ValueChanged : (mOnMapList_ValueChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.OnMapList_ValueChanged")); }
			ScriptFunction SetList() { return mSetList ? mSetList : (mSetList = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.SetList")); }
			ScriptFunction OnListItemPress() { return mOnListItemPress ? mOnListItemPress : (mOnListItemPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.OnListItemPress")); }
			ScriptFunction UpdateListDataProvider() { return mUpdateListDataProvider ? mUpdateListDataProvider : (mUpdateListDataProvider = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.UpdateListDataProvider")); }
			ScriptFunction GetMapFriendlyName() { return mGetMapFriendlyName ? mGetMapFriendlyName : (mGetMapFriendlyName = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.GetMapFriendlyName")); }
			ScriptFunction SetImgScroller() { return mSetImgScroller ? mSetImgScroller : (mSetImgScroller = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.SetImgScroller")); }
			ScriptFunction GetCurrentGameMode() { return mGetCurrentGameMode ? mGetCurrentGameMode : (mGetCurrentGameMode = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.GetCurrentGameMode")); }
			ScriptFunction SetupMapCycle() { return mSetupMapCycle ? mSetupMapCycle : (mSetupMapCycle = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.SetupMapCycle")); }
			ScriptFunction GetSelectedMap() { return mGetSelectedMap ? mGetSelectedMap : (mGetSelectedMap = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.GetSelectedMap")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MapSelect.WidgetInitialized")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTUIDataProvider_MapInfo) MapList() { return *cast(ScriptArray!(UTUIDataProvider_MapInfo)*)(cast(size_t)cast(void*)this + 236); }
		int LastSelectedItem() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
		GFxObject MenuMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 232); }
		GFxClikWidget ImgScrollerMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 228); }
		GFxObject ListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 224); }
		GFxClikWidget ListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 220); }
	}
final:
	static ScriptString GetImageMarkupByMapName(ScriptString InMapName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InMapName;
		StaticClass.ProcessEvent(Functions.GetImageMarkupByMapName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
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
	void OnMapList_ValueChanged(ScriptString InMapSelected, ScriptString InMapImageSelected)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InMapSelected;
		*cast(ScriptString*)&params[12] = InMapImageSelected;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnMapList_ValueChanged, params.ptr, cast(void*)0);
	}
	void SetList(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetList, params.ptr, cast(void*)0);
	}
	void OnListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnListItemPress, params.ptr, cast(void*)0);
	}
	void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateListDataProvider, cast(void*)0, cast(void*)0);
	}
	ScriptString GetMapFriendlyName(ScriptString Map)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Map;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMapFriendlyName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void SetImgScroller(GFxClikWidget InImgScroller)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxClikWidget*)params.ptr = InImgScroller;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetImgScroller, params.ptr, cast(void*)0);
	}
	ScriptName GetCurrentGameMode()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentGameMode, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	void SetupMapCycle(ScriptString SelectedMap)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SelectedMap;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupMapCycle, params.ptr, cast(void*)0);
	}
	ScriptString GetSelectedMap()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSelectedMap, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
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
