module UnrealScript.UTGame.GFxUDKFrontEnd_Mutators;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.UTGame.UTUIDataStore_MenuItems;
import UnrealScript.UTGame.UTUIDataProvider_Mutator;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_Mutators : GFxUDKFrontEnd_Screen
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_Mutators")()); }
	private static __gshared GFxUDKFrontEnd_Mutators mDefaultProperties;
	@property final static GFxUDKFrontEnd_Mutators DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_Mutators, "GFxUDKFrontEnd_Mutators UTGame.Default__GFxUDKFrontEnd_Mutators")()); }
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
			ScriptFunction GetNumEnabledMutators() { mixin(MGF!("mGetNumEnabledMutators", "Function UTGame.GFxUDKFrontEnd_Mutators.GetNumEnabledMutators")()); }
			ScriptFunction GetEnabledMutators() { mixin(MGF!("mGetEnabledMutators", "Function UTGame.GFxUDKFrontEnd_Mutators.GetEnabledMutators")()); }
			ScriptFunction OnViewLoaded() { mixin(MGF!("mOnViewLoaded", "Function UTGame.GFxUDKFrontEnd_Mutators.OnViewLoaded")()); }
			ScriptFunction OnViewActivated() { mixin(MGF!("mOnViewActivated", "Function UTGame.GFxUDKFrontEnd_Mutators.OnViewActivated")()); }
			ScriptFunction SortAllMutatorsBasedOnOfficialArray() { mixin(MGF!("mSortAllMutatorsBasedOnOfficialArray", "Function UTGame.GFxUDKFrontEnd_Mutators.SortAllMutatorsBasedOnOfficialArray")()); }
			ScriptFunction OnTopMostView() { mixin(MGF!("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_Mutators.OnTopMostView")()); }
			ScriptFunction DisableSubComponents() { mixin(MGF!("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_Mutators.DisableSubComponents")()); }
			ScriptFunction PlayOpenAnimation() { mixin(MGF!("mPlayOpenAnimation", "Function UTGame.GFxUDKFrontEnd_Mutators.PlayOpenAnimation")()); }
			ScriptFunction OnListItemPress() { mixin(MGF!("mOnListItemPress", "Function UTGame.GFxUDKFrontEnd_Mutators.OnListItemPress")()); }
			ScriptFunction FindMutatorIndexByClass() { mixin(MGF!("mFindMutatorIndexByClass", "Function UTGame.GFxUDKFrontEnd_Mutators.FindMutatorIndexByClass")()); }
			ScriptFunction OnListChange() { mixin(MGF!("mOnListChange", "Function UTGame.GFxUDKFrontEnd_Mutators.OnListChange")()); }
			ScriptFunction UpdateDescription() { mixin(MGF!("mUpdateDescription", "Function UTGame.GFxUDKFrontEnd_Mutators.UpdateDescription")()); }
			ScriptFunction UpdateListDataProvider() { mixin(MGF!("mUpdateListDataProvider", "Function UTGame.GFxUDKFrontEnd_Mutators.UpdateListDataProvider")()); }
			ScriptFunction UpdateConfigListDataProvider() { mixin(MGF!("mUpdateConfigListDataProvider", "Function UTGame.GFxUDKFrontEnd_Mutators.UpdateConfigListDataProvider")()); }
			ScriptFunction SetMutatorEnabled() { mixin(MGF!("mSetMutatorEnabled", "Function UTGame.GFxUDKFrontEnd_Mutators.SetMutatorEnabled")()); }
			ScriptFunction AddMutatorAndFilterList() { mixin(MGF!("mAddMutatorAndFilterList", "Function UTGame.GFxUDKFrontEnd_Mutators.AddMutatorAndFilterList")()); }
			ScriptFunction ApplyGameModeFilter() { mixin(MGF!("mApplyGameModeFilter", "Function UTGame.GFxUDKFrontEnd_Mutators.ApplyGameModeFilter")()); }
			ScriptFunction IsCurrentMutatorConfigurable() { mixin(MGF!("mIsCurrentMutatorConfigurable", "Function UTGame.GFxUDKFrontEnd_Mutators.IsCurrentMutatorConfigurable")()); }
			ScriptFunction SetList() { mixin(MGF!("mSetList", "Function UTGame.GFxUDKFrontEnd_Mutators.SetList")()); }
			ScriptFunction SetConfigList() { mixin(MGF!("mSetConfigList", "Function UTGame.GFxUDKFrontEnd_Mutators.SetConfigList")()); }
			ScriptFunction WidgetInitialized() { mixin(MGF!("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_Mutators.WidgetInitialized")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UTUIDataProvider_Mutator) AllMutatorsList() { mixin(MGPC!("ScriptArray!(UTUIDataProvider_Mutator)", 220)()); }
			ScriptArray!(UTUIDataProvider_Mutator) AvailableMutatorList() { mixin(MGPC!("ScriptArray!(UTUIDataProvider_Mutator)", 232)()); }
			ScriptArray!(int) EnabledList() { mixin(MGPC!("ScriptArray!(int)", 248)()); }
			GFxObject ConfigListDataProvider() { mixin(MGPC!("GFxObject", 276)()); }
			GFxClikWidget ConfigListMC() { mixin(MGPC!("GFxClikWidget", 272)()); }
			GFxObject ListDataProvider() { mixin(MGPC!("GFxObject", 268)()); }
			GFxObject MenuMC() { mixin(MGPC!("GFxObject", 264)()); }
			GFxClikWidget ListMC() { mixin(MGPC!("GFxClikWidget", 260)()); }
			UTUIDataStore_MenuItems MenuDataStore() { mixin(MGPC!("UTUIDataStore_MenuItems", 244)()); }
		}
		bool bFirstUpdateAfterActivation() { mixin(MGBPC!(280, 0x1)()); }
		bool bFirstUpdateAfterActivation(bool val) { mixin(MSBPC!(280, 0x1)()); }
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
