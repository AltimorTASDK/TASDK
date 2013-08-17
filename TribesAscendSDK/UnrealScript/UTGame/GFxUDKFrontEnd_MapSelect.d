module UnrealScript.UTGame.GFxUDKFrontEnd_MapSelect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.UTGame.UTUIDataProvider_MapInfo;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_MapSelect : GFxUDKFrontEnd_Screen
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_MapSelect")()); }
	private static __gshared GFxUDKFrontEnd_MapSelect mDefaultProperties;
	@property final static GFxUDKFrontEnd_MapSelect DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_MapSelect, "GFxUDKFrontEnd_MapSelect UTGame.Default__GFxUDKFrontEnd_MapSelect")()); }
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
			ScriptFunction GetImageMarkupByMapName() { mixin(MGF!("mGetImageMarkupByMapName", "Function UTGame.GFxUDKFrontEnd_MapSelect.GetImageMarkupByMapName")()); }
			ScriptFunction OnViewLoaded() { mixin(MGF!("mOnViewLoaded", "Function UTGame.GFxUDKFrontEnd_MapSelect.OnViewLoaded")()); }
			ScriptFunction OnTopMostView() { mixin(MGF!("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_MapSelect.OnTopMostView")()); }
			ScriptFunction DisableSubComponents() { mixin(MGF!("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_MapSelect.DisableSubComponents")()); }
			ScriptFunction OnMapList_ValueChanged() { mixin(MGF!("mOnMapList_ValueChanged", "Function UTGame.GFxUDKFrontEnd_MapSelect.OnMapList_ValueChanged")()); }
			ScriptFunction SetList() { mixin(MGF!("mSetList", "Function UTGame.GFxUDKFrontEnd_MapSelect.SetList")()); }
			ScriptFunction OnListItemPress() { mixin(MGF!("mOnListItemPress", "Function UTGame.GFxUDKFrontEnd_MapSelect.OnListItemPress")()); }
			ScriptFunction UpdateListDataProvider() { mixin(MGF!("mUpdateListDataProvider", "Function UTGame.GFxUDKFrontEnd_MapSelect.UpdateListDataProvider")()); }
			ScriptFunction GetMapFriendlyName() { mixin(MGF!("mGetMapFriendlyName", "Function UTGame.GFxUDKFrontEnd_MapSelect.GetMapFriendlyName")()); }
			ScriptFunction SetImgScroller() { mixin(MGF!("mSetImgScroller", "Function UTGame.GFxUDKFrontEnd_MapSelect.SetImgScroller")()); }
			ScriptFunction GetCurrentGameMode() { mixin(MGF!("mGetCurrentGameMode", "Function UTGame.GFxUDKFrontEnd_MapSelect.GetCurrentGameMode")()); }
			ScriptFunction SetupMapCycle() { mixin(MGF!("mSetupMapCycle", "Function UTGame.GFxUDKFrontEnd_MapSelect.SetupMapCycle")()); }
			ScriptFunction GetSelectedMap() { mixin(MGF!("mGetSelectedMap", "Function UTGame.GFxUDKFrontEnd_MapSelect.GetSelectedMap")()); }
			ScriptFunction WidgetInitialized() { mixin(MGF!("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_MapSelect.WidgetInitialized")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTUIDataProvider_MapInfo) MapList() { mixin(MGPC!(ScriptArray!(UTUIDataProvider_MapInfo), 236)()); }
		int LastSelectedItem() { mixin(MGPC!(int, 248)()); }
		GFxObject MenuMC() { mixin(MGPC!(GFxObject, 232)()); }
		GFxClikWidget ImgScrollerMC() { mixin(MGPC!(GFxClikWidget, 228)()); }
		GFxObject ListDataProvider() { mixin(MGPC!(GFxObject, 224)()); }
		GFxClikWidget ListMC() { mixin(MGPC!(GFxClikWidget, 220)()); }
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
