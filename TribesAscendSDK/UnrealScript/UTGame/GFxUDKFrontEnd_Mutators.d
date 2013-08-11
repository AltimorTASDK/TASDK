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
	int GetNumEnabledMutators()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38261], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptString GetEnabledMutators()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38338], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38856], cast(void*)0, cast(void*)0);
	}
	void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38857], cast(void*)0, cast(void*)0);
	}
	void SortAllMutatorsBasedOnOfficialArray()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38861], cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38868], params.ptr, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38870], params.ptr, cast(void*)0);
	}
	void PlayOpenAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38872], cast(void*)0, cast(void*)0);
	}
	void OnListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38873], params.ptr, cast(void*)0);
	}
	ubyte FindMutatorIndexByClass(ScriptString MutatorClass)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MutatorClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38878], params.ptr, cast(void*)0);
		return params[12];
	}
	void OnListChange(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38882], params.ptr, cast(void*)0);
	}
	void UpdateDescription()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38884], cast(void*)0, cast(void*)0);
	}
	void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38889], cast(void*)0, cast(void*)0);
	}
	void UpdateConfigListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38900], cast(void*)0, cast(void*)0);
	}
	void SetMutatorEnabled(int MutatorId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = MutatorId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38901], params.ptr, cast(void*)0);
	}
	void AddMutatorAndFilterList(int NewMutator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewMutator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38903], params.ptr, cast(void*)0);
	}
	void ApplyGameModeFilter()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38922], cast(void*)0, cast(void*)0);
	}
	bool IsCurrentMutatorConfigurable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38927], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetList(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38929], params.ptr, cast(void*)0);
	}
	void SetConfigList(GFxObject ConfigList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = ConfigList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38931], params.ptr, cast(void*)0);
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38933], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
