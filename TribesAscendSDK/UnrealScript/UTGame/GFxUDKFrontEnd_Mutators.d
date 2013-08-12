module UnrealScript.UTGame.GFxUDKFrontEnd_Mutators;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.UTGame.UTUIDataStore_MenuItems;
import UnrealScript.UTGame.UTUIDataProvider_Mutator;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_Mutators : GFxUDKFrontEnd_Screen
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_Mutators")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetNumEnabledMutators;
			ScriptFunction mGetEnabledMutators;
			ScriptFunction mOnViewLoaded;
			ScriptFunction mOnViewActivated;
			ScriptFunction mSortAllMutatorsBasedOnOfficialArray;
			ScriptFunction mOnTopMostView;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mPlayOpenAnimation;
			ScriptFunction mOnListItemPress;
			ScriptFunction mFindMutatorIndexByClass;
			ScriptFunction mOnListChange;
			ScriptFunction mUpdateDescription;
			ScriptFunction mUpdateListDataProvider;
			ScriptFunction mUpdateConfigListDataProvider;
			ScriptFunction mSetMutatorEnabled;
			ScriptFunction mAddMutatorAndFilterList;
			ScriptFunction mApplyGameModeFilter;
			ScriptFunction mIsCurrentMutatorConfigurable;
			ScriptFunction mSetList;
			ScriptFunction mSetConfigList;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction GetNumEnabledMutators() { return mGetNumEnabledMutators ? mGetNumEnabledMutators : (mGetNumEnabledMutators = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.GetNumEnabledMutators")); }
			ScriptFunction GetEnabledMutators() { return mGetEnabledMutators ? mGetEnabledMutators : (mGetEnabledMutators = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.GetEnabledMutators")); }
			ScriptFunction OnViewLoaded() { return mOnViewLoaded ? mOnViewLoaded : (mOnViewLoaded = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.OnViewLoaded")); }
			ScriptFunction OnViewActivated() { return mOnViewActivated ? mOnViewActivated : (mOnViewActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.OnViewActivated")); }
			ScriptFunction SortAllMutatorsBasedOnOfficialArray() { return mSortAllMutatorsBasedOnOfficialArray ? mSortAllMutatorsBasedOnOfficialArray : (mSortAllMutatorsBasedOnOfficialArray = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.SortAllMutatorsBasedOnOfficialArray")); }
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.OnTopMostView")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.DisableSubComponents")); }
			ScriptFunction PlayOpenAnimation() { return mPlayOpenAnimation ? mPlayOpenAnimation : (mPlayOpenAnimation = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.PlayOpenAnimation")); }
			ScriptFunction OnListItemPress() { return mOnListItemPress ? mOnListItemPress : (mOnListItemPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.OnListItemPress")); }
			ScriptFunction FindMutatorIndexByClass() { return mFindMutatorIndexByClass ? mFindMutatorIndexByClass : (mFindMutatorIndexByClass = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.FindMutatorIndexByClass")); }
			ScriptFunction OnListChange() { return mOnListChange ? mOnListChange : (mOnListChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.OnListChange")); }
			ScriptFunction UpdateDescription() { return mUpdateDescription ? mUpdateDescription : (mUpdateDescription = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.UpdateDescription")); }
			ScriptFunction UpdateListDataProvider() { return mUpdateListDataProvider ? mUpdateListDataProvider : (mUpdateListDataProvider = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.UpdateListDataProvider")); }
			ScriptFunction UpdateConfigListDataProvider() { return mUpdateConfigListDataProvider ? mUpdateConfigListDataProvider : (mUpdateConfigListDataProvider = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.UpdateConfigListDataProvider")); }
			ScriptFunction SetMutatorEnabled() { return mSetMutatorEnabled ? mSetMutatorEnabled : (mSetMutatorEnabled = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.SetMutatorEnabled")); }
			ScriptFunction AddMutatorAndFilterList() { return mAddMutatorAndFilterList ? mAddMutatorAndFilterList : (mAddMutatorAndFilterList = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.AddMutatorAndFilterList")); }
			ScriptFunction ApplyGameModeFilter() { return mApplyGameModeFilter ? mApplyGameModeFilter : (mApplyGameModeFilter = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.ApplyGameModeFilter")); }
			ScriptFunction IsCurrentMutatorConfigurable() { return mIsCurrentMutatorConfigurable ? mIsCurrentMutatorConfigurable : (mIsCurrentMutatorConfigurable = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.IsCurrentMutatorConfigurable")); }
			ScriptFunction SetList() { return mSetList ? mSetList : (mSetList = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.SetList")); }
			ScriptFunction SetConfigList() { return mSetConfigList ? mSetConfigList : (mSetConfigList = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.SetConfigList")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Mutators.WidgetInitialized")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UTUIDataProvider_Mutator) AllMutatorsList() { return *cast(ScriptArray!(UTUIDataProvider_Mutator)*)(cast(size_t)cast(void*)this + 220); }
			ScriptArray!(UTUIDataProvider_Mutator) AvailableMutatorList() { return *cast(ScriptArray!(UTUIDataProvider_Mutator)*)(cast(size_t)cast(void*)this + 232); }
			ScriptArray!(int) EnabledList() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 248); }
			GFxObject ConfigListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 276); }
			GFxClikWidget ConfigListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 272); }
			GFxObject ListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 268); }
			GFxObject MenuMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 264); }
			GFxClikWidget ListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 260); }
			UTUIDataStore_MenuItems MenuDataStore() { return *cast(UTUIDataStore_MenuItems*)(cast(size_t)cast(void*)this + 244); }
		}
		bool bFirstUpdateAfterActivation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x1) != 0; }
		bool bFirstUpdateAfterActivation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x1; } return val; }
	}
final:
	static int GetNumEnabledMutators()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetNumEnabledMutators, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	static ScriptString GetEnabledMutators()
	{
		ubyte params[12];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetEnabledMutators, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewLoaded, cast(void*)0, cast(void*)0);
	}
	void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewActivated, cast(void*)0, cast(void*)0);
	}
	void SortAllMutatorsBasedOnOfficialArray()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SortAllMutatorsBasedOnOfficialArray, cast(void*)0, cast(void*)0);
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
	void PlayOpenAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayOpenAnimation, cast(void*)0, cast(void*)0);
	}
	void OnListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnListItemPress, params.ptr, cast(void*)0);
	}
	ubyte FindMutatorIndexByClass(ScriptString MutatorClass)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MutatorClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindMutatorIndexByClass, params.ptr, cast(void*)0);
		return params[12];
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
	void UpdateConfigListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateConfigListDataProvider, cast(void*)0, cast(void*)0);
	}
	void SetMutatorEnabled(int MutatorId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = MutatorId;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMutatorEnabled, params.ptr, cast(void*)0);
	}
	void AddMutatorAndFilterList(int NewMutator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewMutator;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMutatorAndFilterList, params.ptr, cast(void*)0);
	}
	static void ApplyGameModeFilter()
	{
		StaticClass.ProcessEvent(Functions.ApplyGameModeFilter, cast(void*)0, cast(void*)0);
	}
	bool IsCurrentMutatorConfigurable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsCurrentMutatorConfigurable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetList(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetList, params.ptr, cast(void*)0);
	}
	void SetConfigList(GFxObject ConfigList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = ConfigList;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetConfigList, params.ptr, cast(void*)0);
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
