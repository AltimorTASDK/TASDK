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
	struct Option
	{
		private ubyte __buffer__[36];
	public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38059], cast(void*)0, cast(void*)0);
	}
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38074], cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38075], params.ptr, cast(void*)0);
	}
	void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38077], cast(void*)0, cast(void*)0);
	}
	void DisableSubComponents(bool bEnableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38078], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38080], params.ptr, cast(void*)0);
	}
	void ValidateServerType()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38082], cast(void*)0, cast(void*)0);
	}
	void ForceLANOption(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38085], params.ptr, cast(void*)0);
	}
	ScriptString GetGameClassByFriendlyName(ScriptString FriendlyName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FriendlyName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38089], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void OnFilterList_OptionChanged(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38092], params.ptr, cast(void*)0);
	}
	void SetupListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38102], cast(void*)0, cast(void*)0);
	}
	void PushFilterListUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38111], cast(void*)0, cast(void*)0);
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
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
