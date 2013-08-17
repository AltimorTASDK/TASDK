module UnrealScript.UTGame.GFxUDKFrontEnd_FilterDialog;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.GFxUDKFrontEnd_FilterDialog")); }
	private static __gshared GFxUDKFrontEnd_FilterDialog mDefaultProperties;
	@property final static GFxUDKFrontEnd_FilterDialog DefaultProperties() { mixin(MGDPC("GFxUDKFrontEnd_FilterDialog", "GFxUDKFrontEnd_FilterDialog UTGame.Default__GFxUDKFrontEnd_FilterDialog")); }
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
			ScriptFunction OnSwitchedGameType() { mixin(MGF("mOnSwitchedGameType", "Function UTGame.GFxUDKFrontEnd_FilterDialog.OnSwitchedGameType")); }
			ScriptFunction OnViewLoaded() { mixin(MGF("mOnViewLoaded", "Function UTGame.GFxUDKFrontEnd_FilterDialog.OnViewLoaded")); }
			ScriptFunction OnTopMostView() { mixin(MGF("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_FilterDialog.OnTopMostView")); }
			ScriptFunction OnViewClosed() { mixin(MGF("mOnViewClosed", "Function UTGame.GFxUDKFrontEnd_FilterDialog.OnViewClosed")); }
			ScriptFunction DisableSubComponents() { mixin(MGF("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_FilterDialog.DisableSubComponents")); }
			ScriptFunction SetBackButtonListener() { mixin(MGF("mSetBackButtonListener", "Function UTGame.GFxUDKFrontEnd_FilterDialog.SetBackButtonListener")); }
			ScriptFunction ValidateServerType() { mixin(MGF("mValidateServerType", "Function UTGame.GFxUDKFrontEnd_FilterDialog.ValidateServerType")); }
			ScriptFunction ForceLANOption() { mixin(MGF("mForceLANOption", "Function UTGame.GFxUDKFrontEnd_FilterDialog.ForceLANOption")); }
			ScriptFunction GetGameClassByFriendlyName() { mixin(MGF("mGetGameClassByFriendlyName", "Function UTGame.GFxUDKFrontEnd_FilterDialog.GetGameClassByFriendlyName")); }
			ScriptFunction OnFilterList_OptionChanged() { mixin(MGF("mOnFilterList_OptionChanged", "Function UTGame.GFxUDKFrontEnd_FilterDialog.OnFilterList_OptionChanged")); }
			ScriptFunction SetupListDataProvider() { mixin(MGF("mSetupListDataProvider", "Function UTGame.GFxUDKFrontEnd_FilterDialog.SetupListDataProvider")); }
			ScriptFunction PushFilterListUpdate() { mixin(MGF("mPushFilterListUpdate", "Function UTGame.GFxUDKFrontEnd_FilterDialog.PushFilterListUpdate")); }
			ScriptFunction WidgetInitialized() { mixin(MGF("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_FilterDialog.WidgetInitialized")); }
		}
	}
	struct Option
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.GFxUDKFrontEnd_FilterDialog.Option")); }
		@property final auto ref
		{
			ScriptArray!(ScriptString) OptionData() { mixin(MGPS("ScriptArray!(ScriptString)", 24)); }
			ScriptString OptionLabel() { mixin(MGPS("ScriptString", 12)); }
			ScriptString OptionName() { mixin(MGPS("ScriptString", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GFxUDKFrontEnd_FilterDialog.Option) ListOptions() { mixin(MGPC("ScriptArray!(GFxUDKFrontEnd_FilterDialog.Option)", 196)); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnSwitchedGameType__Delegate'!
			GFxObject GameTypeOptionItem() { mixin(MGPC("GFxObject", 192)); }
			GFxObject DataProvider() { mixin(MGPC("GFxObject", 188)); }
			GFxClikWidget FilterListMC() { mixin(MGPC("GFxClikWidget", 180)); }
			UTDataStore_GameSearchDM SearchDataStore() { mixin(MGPC("UTDataStore_GameSearchDM", 176)); }
			UTUIDataStore_MenuItems MenuDataStore() { mixin(MGPC("UTUIDataStore_MenuItems", 172)); }
			UTUIDataStore_StringList StringListDataStore() { mixin(MGPC("UTUIDataStore_StringList", 168)); }
		}
		bool bFiltersHaveChanged() { mixin(MGBPC(184, 0x1)); }
		bool bFiltersHaveChanged(bool val) { mixin(MSBPC(184, 0x1)); }
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
	void OnTopMostView(bool* bPlayOpenAnimation = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bPlayOpenAnimation !is null)
			*cast(bool*)params.ptr = *bPlayOpenAnimation;
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
