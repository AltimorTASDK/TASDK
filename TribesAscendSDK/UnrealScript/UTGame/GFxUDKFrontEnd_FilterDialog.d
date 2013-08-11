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
	struct Option
	{
		public @property final auto ref ScriptArray!(ScriptString) OptionData() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 24); }
		private ubyte __OptionData[12];
		public @property final auto ref ScriptString OptionLabel() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __OptionLabel[12];
		public @property final auto ref ScriptString OptionName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __OptionName[12];
	}
	public @property final auto ref ScriptArray!(GFxUDKFrontEnd_FilterDialog.Option) ListOptions() { return *cast(ScriptArray!(GFxUDKFrontEnd_FilterDialog.Option)*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref GFxObject GameTypeOptionItem() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref GFxObject DataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 188); }
	public @property final bool bFiltersHaveChanged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 184) & 0x1) != 0; }
	public @property final bool bFiltersHaveChanged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 184) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 184) &= ~0x1; } return val; }
	public @property final auto ref GFxClikWidget FilterListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref UTDataStore_GameSearchDM SearchDataStore() { return *cast(UTDataStore_GameSearchDM*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref UTUIDataStore_MenuItems MenuDataStore() { return *cast(UTUIDataStore_MenuItems*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref UTUIDataStore_StringList StringListDataStore() { return *cast(UTUIDataStore_StringList*)(cast(size_t)cast(void*)this + 168); }
	final void OnSwitchedGameType()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38059], cast(void*)0, cast(void*)0);
	}
	final void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38074], cast(void*)0, cast(void*)0);
	}
	final void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38075], params.ptr, cast(void*)0);
	}
	final void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38077], cast(void*)0, cast(void*)0);
	}
	final void DisableSubComponents(bool bEnableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38078], params.ptr, cast(void*)0);
	}
	final void SetBackButtonListener(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* DelegateListener)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = DelegateListener;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38080], params.ptr, cast(void*)0);
	}
	final void ValidateServerType()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38082], cast(void*)0, cast(void*)0);
	}
	final void ForceLANOption(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38085], params.ptr, cast(void*)0);
	}
	final ScriptString GetGameClassByFriendlyName(ScriptString FriendlyName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FriendlyName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38089], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final void OnFilterList_OptionChanged(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38092], params.ptr, cast(void*)0);
	}
	final void SetupListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38102], cast(void*)0, cast(void*)0);
	}
	final void PushFilterListUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38111], cast(void*)0, cast(void*)0);
	}
	final bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38112], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
