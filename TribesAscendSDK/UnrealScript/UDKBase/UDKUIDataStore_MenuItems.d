module UnrealScript.UDKBase.UDKUIDataStore_MenuItems;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_GameResource;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;
import UnrealScript.Core.UObject;

extern(C++) interface UDKUIDataStore_MenuItems : UIDataStore_GameResource
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(int) EnabledMutators() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 204); }
		ScriptArray!(int) MapCycle() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 216); }
		ScriptArray!(int) WeaponPriority() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 228); }
		int GameModeFilter() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
		ScriptClass MapInfoDataProviderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 200); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 196); }
	}
final:
	int GetProviderCount(ScriptName FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35605], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool IsProviderFiltered(ScriptName FieldName, int ProviderIdx)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ProviderIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35608], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void GetAllResourceDataProviders(ScriptClass ProviderClass, ScriptArray!(UDKUIResourceDataProvider)* Providers)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ProviderClass;
		*cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[4] = *Providers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35612], params.ptr, cast(void*)0);
		*Providers = *cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[4];
	}
	int FindValueInProviderSet(ScriptName ProviderFieldName, ScriptName SearchTag, ScriptString SearchValue)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderFieldName;
		*cast(ScriptName*)&params[8] = SearchTag;
		*cast(ScriptString*)&params[16] = SearchValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35616], params.ptr, cast(void*)0);
		return *cast(int*)&params[28];
	}
	bool GetValueFromProviderSet(ScriptName ProviderFieldName, ScriptName SearchTag, int ListIndex, ScriptString* OutValue)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderFieldName;
		*cast(ScriptName*)&params[8] = SearchTag;
		*cast(int*)&params[16] = ListIndex;
		*cast(ScriptString*)&params[20] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35621], params.ptr, cast(void*)0);
		*OutValue = *cast(ScriptString*)&params[20];
		return *cast(bool*)&params[32];
	}
	bool GetProviderSet(ScriptName ProviderFieldName, ScriptArray!(UDKUIResourceDataProvider)* OutProviders)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderFieldName;
		*cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[8] = *OutProviders;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35627], params.ptr, cast(void*)0);
		*OutProviders = *cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[8];
		return *cast(bool*)&params[20];
	}
	void InitializeListElementProviders()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35632], cast(void*)0, cast(void*)0);
	}
	void RemoveListElementProvidersKey(ScriptName KeyName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = KeyName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35637], params.ptr, cast(void*)0);
	}
	void AddListElementProvidersKey(ScriptName KeyName, UDKUIResourceDataProvider Provider)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = KeyName;
		*cast(UDKUIResourceDataProvider*)&params[8] = Provider;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35639], params.ptr, cast(void*)0);
	}
}
