module UnrealScript.UTGame.GFxUDKFrontEnd_SettingsBase;

import ScriptClasses;
import UnrealScript.UTGame.UTUIDataProvider_MenuOption;
import UnrealScript.Engine.UIDataStore_OnlineGameSettings;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_SettingsBase : GFxUDKFrontEnd_Screen
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_SettingsBase")); }
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
			ScriptFunction OnViewLoaded() { return mOnViewLoaded ? mOnViewLoaded : (mOnViewLoaded = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.OnViewLoaded")); }
			ScriptFunction OnViewActivated() { return mOnViewActivated ? mOnViewActivated : (mOnViewActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.OnViewActivated")); }
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.OnTopMostView")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.DisableSubComponents")); }
			ScriptFunction SetSelectedOptionSet() { return mSetSelectedOptionSet ? mSetSelectedOptionSet : (mSetSelectedOptionSet = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.SetSelectedOptionSet")); }
			ScriptFunction LoadDataFromStore() { return mLoadDataFromStore ? mLoadDataFromStore : (mLoadDataFromStore = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.LoadDataFromStore")); }
			ScriptFunction Select_Back() { return mSelect_Back ? mSelect_Back : (mSelect_Back = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.Select_Back")); }
			ScriptFunction SaveState() { return mSaveState ? mSaveState : (mSaveState = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.SaveState")); }
			ScriptFunction SetList() { return mSetList ? mSetList : (mSetList = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.SetList")); }
			ScriptFunction OnListChange() { return mOnListChange ? mOnListChange : (mOnListChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.OnListChange")); }
			ScriptFunction OnOptionChanged() { return mOnOptionChanged ? mOnOptionChanged : (mOnOptionChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.OnOptionChanged")); }
			ScriptFunction UpdateDescription() { return mUpdateDescription ? mUpdateDescription : (mUpdateDescription = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.UpdateDescription")); }
			ScriptFunction UpdateListDataProvider() { return mUpdateListDataProvider ? mUpdateListDataProvider : (mUpdateListDataProvider = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.UpdateListDataProvider")); }
			ScriptFunction FindLocalizedSettingIndexByName() { return mFindLocalizedSettingIndexByName ? mFindLocalizedSettingIndexByName : (mFindLocalizedSettingIndexByName = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.FindLocalizedSettingIndexByName")); }
			ScriptFunction OnEscapeKeyPress() { return mOnEscapeKeyPress ? mOnEscapeKeyPress : (mOnEscapeKeyPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.OnEscapeKeyPress")); }
			ScriptFunction Select_BackImpl() { return mSelect_BackImpl ? mSelect_BackImpl : (mSelect_BackImpl = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.Select_BackImpl")); }
			ScriptFunction FindPropertyIndexByName() { return mFindPropertyIndexByName ? mFindPropertyIndexByName : (mFindPropertyIndexByName = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.FindPropertyIndexByName")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_SettingsBase.WidgetInitialized")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UTUIDataProvider_MenuOption) SettingsList() { return *cast(ScriptArray!(UTUIDataProvider_MenuOption)*)(cast(size_t)cast(void*)this + 244); }
		UIDataStore_OnlineGameSettings SettingsDataStore() { return *cast(UIDataStore_OnlineGameSettings*)(cast(size_t)cast(void*)this + 256); }
		GFxObject MenuMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 240); }
		GFxObject ListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 236); }
		ScriptString SelectedOptionSet() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 224); }
		GFxClikWidget ListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 220); }
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
