module UnrealScript.UTGame.GFxUDKFrontEnd_SettingsBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTUIDataProvider_MenuOption;
import UnrealScript.Engine.UIDataStore_OnlineGameSettings;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_SettingsBase : GFxUDKFrontEnd_Screen
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_SettingsBase")()); }
	private static __gshared GFxUDKFrontEnd_SettingsBase mDefaultProperties;
	@property final static GFxUDKFrontEnd_SettingsBase DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_SettingsBase, "GFxUDKFrontEnd_SettingsBase UTGame.Default__GFxUDKFrontEnd_SettingsBase")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnViewLoaded;
			ScriptFunction mOnViewActivated;
			ScriptFunction mOnTopMostView;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mSetSelectedOptionSet;
			ScriptFunction mLoadDataFromStore;
			ScriptFunction mSelect_Back;
			ScriptFunction mSaveState;
			ScriptFunction mSetList;
			ScriptFunction mOnListChange;
			ScriptFunction mOnOptionChanged;
			ScriptFunction mUpdateDescription;
			ScriptFunction mUpdateListDataProvider;
			ScriptFunction mFindLocalizedSettingIndexByName;
			ScriptFunction mOnEscapeKeyPress;
			ScriptFunction mSelect_BackImpl;
			ScriptFunction mFindPropertyIndexByName;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction OnViewLoaded() { mixin(MGF!("mOnViewLoaded", "Function UTGame.GFxUDKFrontEnd_SettingsBase.OnViewLoaded")()); }
			ScriptFunction OnViewActivated() { mixin(MGF!("mOnViewActivated", "Function UTGame.GFxUDKFrontEnd_SettingsBase.OnViewActivated")()); }
			ScriptFunction OnTopMostView() { mixin(MGF!("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_SettingsBase.OnTopMostView")()); }
			ScriptFunction DisableSubComponents() { mixin(MGF!("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_SettingsBase.DisableSubComponents")()); }
			ScriptFunction SetSelectedOptionSet() { mixin(MGF!("mSetSelectedOptionSet", "Function UTGame.GFxUDKFrontEnd_SettingsBase.SetSelectedOptionSet")()); }
			ScriptFunction LoadDataFromStore() { mixin(MGF!("mLoadDataFromStore", "Function UTGame.GFxUDKFrontEnd_SettingsBase.LoadDataFromStore")()); }
			ScriptFunction Select_Back() { mixin(MGF!("mSelect_Back", "Function UTGame.GFxUDKFrontEnd_SettingsBase.Select_Back")()); }
			ScriptFunction SaveState() { mixin(MGF!("mSaveState", "Function UTGame.GFxUDKFrontEnd_SettingsBase.SaveState")()); }
			ScriptFunction SetList() { mixin(MGF!("mSetList", "Function UTGame.GFxUDKFrontEnd_SettingsBase.SetList")()); }
			ScriptFunction OnListChange() { mixin(MGF!("mOnListChange", "Function UTGame.GFxUDKFrontEnd_SettingsBase.OnListChange")()); }
			ScriptFunction OnOptionChanged() { mixin(MGF!("mOnOptionChanged", "Function UTGame.GFxUDKFrontEnd_SettingsBase.OnOptionChanged")()); }
			ScriptFunction UpdateDescription() { mixin(MGF!("mUpdateDescription", "Function UTGame.GFxUDKFrontEnd_SettingsBase.UpdateDescription")()); }
			ScriptFunction UpdateListDataProvider() { mixin(MGF!("mUpdateListDataProvider", "Function UTGame.GFxUDKFrontEnd_SettingsBase.UpdateListDataProvider")()); }
			ScriptFunction FindLocalizedSettingIndexByName() { mixin(MGF!("mFindLocalizedSettingIndexByName", "Function UTGame.GFxUDKFrontEnd_SettingsBase.FindLocalizedSettingIndexByName")()); }
			ScriptFunction OnEscapeKeyPress() { mixin(MGF!("mOnEscapeKeyPress", "Function UTGame.GFxUDKFrontEnd_SettingsBase.OnEscapeKeyPress")()); }
			ScriptFunction Select_BackImpl() { mixin(MGF!("mSelect_BackImpl", "Function UTGame.GFxUDKFrontEnd_SettingsBase.Select_BackImpl")()); }
			ScriptFunction FindPropertyIndexByName() { mixin(MGF!("mFindPropertyIndexByName", "Function UTGame.GFxUDKFrontEnd_SettingsBase.FindPropertyIndexByName")()); }
			ScriptFunction WidgetInitialized() { mixin(MGF!("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_SettingsBase.WidgetInitialized")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTUIDataProvider_MenuOption) SettingsList() { mixin(MGPC!("ScriptArray!(UTUIDataProvider_MenuOption)", 244)()); }
		UIDataStore_OnlineGameSettings SettingsDataStore() { mixin(MGPC!("UIDataStore_OnlineGameSettings", 256)()); }
		GFxObject MenuMC() { mixin(MGPC!("GFxObject", 240)()); }
		GFxObject ListDataProvider() { mixin(MGPC!("GFxObject", 236)()); }
		ScriptString SelectedOptionSet() { mixin(MGPC!("ScriptString", 224)()); }
		GFxClikWidget ListMC() { mixin(MGPC!("GFxClikWidget", 220)()); }
	}
final:
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewLoaded, cast(void*)0, cast(void*)0);
	}
	void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewActivated, cast(void*)0, cast(void*)0);
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
	void SetSelectedOptionSet()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSelectedOptionSet, cast(void*)0, cast(void*)0);
	}
	void LoadDataFromStore()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadDataFromStore, cast(void*)0, cast(void*)0);
	}
	void Select_Back(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.Select_Back, params.ptr, cast(void*)0);
	}
	void SaveState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveState, cast(void*)0, cast(void*)0);
	}
	void SetList(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetList, params.ptr, cast(void*)0);
	}
	void OnListChange(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnListChange, params.ptr, cast(void*)0);
	}
	void OnOptionChanged(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnOptionChanged, params.ptr, cast(void*)0);
	}
	void UpdateDescription()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDescription, cast(void*)0, cast(void*)0);
	}
	void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateListDataProvider, cast(void*)0, cast(void*)0);
	}
	int FindLocalizedSettingIndexByName(ScriptString InSettingName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InSettingName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindLocalizedSettingIndexByName, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void OnEscapeKeyPress()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEscapeKeyPress, cast(void*)0, cast(void*)0);
	}
	void Select_BackImpl()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Select_BackImpl, cast(void*)0, cast(void*)0);
	}
	int FindPropertyIndexByName(ScriptString InPropertyName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InPropertyName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPropertyIndexByName, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
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
