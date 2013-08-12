module UnrealScript.UTGame.GFxUDKFrontEnd_FilterDialog;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;
import UnrealScript.UTGame.UTUIDataStore_MenuItems;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.UTGame.UTDataStore_GameSearchDM;
import UnrealScript.UTGame.UTUIDataStore_StringList;

extern(C++) interface GFxUDKFrontEnd_FilterDialog : GFxUDKFrontEnd_Dialog
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_FilterDialog")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnSwitchedGameType;
			ScriptFunction mOnViewLoaded;
			ScriptFunction mOnTopMostView;
			ScriptFunction mOnViewClosed;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mSetBackButtonListener;
			ScriptFunction mValidateServerType;
			ScriptFunction mForceLANOption;
			ScriptFunction mGetGameClassByFriendlyName;
			ScriptFunction mOnFilterList_OptionChanged;
			ScriptFunction mSetupListDataProvider;
			ScriptFunction mPushFilterListUpdate;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction OnSwitchedGameType() { return mOnSwitchedGameType ? mOnSwitchedGameType : (mOnSwitchedGameType = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.OnSwitchedGameType")); }
			ScriptFunction OnViewLoaded() { return mOnViewLoaded ? mOnViewLoaded : (mOnViewLoaded = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.OnViewLoaded")); }
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.OnTopMostView")); }
			ScriptFunction OnViewClosed() { return mOnViewClosed ? mOnViewClosed : (mOnViewClosed = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.OnViewClosed")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.DisableSubComponents")); }
			ScriptFunction SetBackButtonListener() { return mSetBackButtonListener ? mSetBackButtonListener : (mSetBackButtonListener = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.SetBackButtonListener")); }
			ScriptFunction ValidateServerType() { return mValidateServerType ? mValidateServerType : (mValidateServerType = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.ValidateServerType")); }
			ScriptFunction ForceLANOption() { return mForceLANOption ? mForceLANOption : (mForceLANOption = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.ForceLANOption")); }
			ScriptFunction GetGameClassByFriendlyName() { return mGetGameClassByFriendlyName ? mGetGameClassByFriendlyName : (mGetGameClassByFriendlyName = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.GetGameClassByFriendlyName")); }
			ScriptFunction OnFilterList_OptionChanged() { return mOnFilterList_OptionChanged ? mOnFilterList_OptionChanged : (mOnFilterList_OptionChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.OnFilterList_OptionChanged")); }
			ScriptFunction SetupListDataProvider() { return mSetupListDataProvider ? mSetupListDataProvider : (mSetupListDataProvider = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.SetupListDataProvider")); }
			ScriptFunction PushFilterListUpdate() { return mPushFilterListUpdate ? mPushFilterListUpdate : (mPushFilterListUpdate = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.PushFilterListUpdate")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_FilterDialog.WidgetInitialized")); }
		}
	}
	struct Option
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.GFxUDKFrontEnd_FilterDialog.Option")); }
		@property final auto ref
		{
			ScriptArray!(ScriptString) OptionData() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 24); }
			ScriptString OptionLabel() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptString OptionName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GFxUDKFrontEnd_FilterDialog.Option) ListOptions() { return *cast(ScriptArray!(GFxUDKFrontEnd_FilterDialog.Option)*)(cast(size_t)cast(void*)this + 196); }
			GFxObject GameTypeOptionItem() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 192); }
			GFxObject DataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 188); }
			GFxClikWidget FilterListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 180); }
			UTDataStore_GameSearchDM SearchDataStore() { return *cast(UTDataStore_GameSearchDM*)(cast(size_t)cast(void*)this + 176); }
			UTUIDataStore_MenuItems MenuDataStore() { return *cast(UTUIDataStore_MenuItems*)(cast(size_t)cast(void*)this + 172); }
			UTUIDataStore_StringList StringListDataStore() { return *cast(UTUIDataStore_StringList*)(cast(size_t)cast(void*)this + 168); }
		}
		bool bFiltersHaveChanged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 184) & 0x1) != 0; }
		bool bFiltersHaveChanged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 184) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 184) &= ~0x1; } return val; }
	}
final:
	void OnSwitchedGameType()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchedGameType, cast(void*)0, cast(void*)0);
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
	void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewClosed, cast(void*)0, cast(void*)0);
	}
	void DisableSubComponents(bool bEnableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableComponents;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableSubComponents, params.ptr, cast(void*)0);
	}
	void SetBackButtonListener(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* DelegateListener)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = DelegateListener;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBackButtonListener, params.ptr, cast(void*)0);
	}
	void ValidateServerType()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidateServerType, cast(void*)0, cast(void*)0);
	}
	void ForceLANOption(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceLANOption, params.ptr, cast(void*)0);
	}
	ScriptString GetGameClassByFriendlyName(ScriptString FriendlyName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FriendlyName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetGameClassByFriendlyName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void OnFilterList_OptionChanged(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFilterList_OptionChanged, params.ptr, cast(void*)0);
	}
	void SetupListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupListDataProvider, cast(void*)0, cast(void*)0);
	}
	void PushFilterListUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PushFilterListUpdate, cast(void*)0, cast(void*)0);
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
