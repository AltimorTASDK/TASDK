module UnrealScript.UDKBase.UDKUIDataStore_MenuItems;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_GameResource;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;
import UnrealScript.Core.UObject;

extern(C++) interface UDKUIDataStore_MenuItems : UIDataStore_GameResource
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKUIDataStore_MenuItems")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetProviderCount;
			ScriptFunction mIsProviderFiltered;
			ScriptFunction mGetAllResourceDataProviders;
			ScriptFunction mFindValueInProviderSet;
			ScriptFunction mGetValueFromProviderSet;
			ScriptFunction mGetProviderSet;
			ScriptFunction mInitializeListElementProviders;
			ScriptFunction mRemoveListElementProvidersKey;
			ScriptFunction mAddListElementProvidersKey;
		}
		public @property static final
		{
			ScriptFunction GetProviderCount() { return mGetProviderCount ? mGetProviderCount : (mGetProviderCount = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_MenuItems.GetProviderCount")); }
			ScriptFunction IsProviderFiltered() { return mIsProviderFiltered ? mIsProviderFiltered : (mIsProviderFiltered = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_MenuItems.IsProviderFiltered")); }
			ScriptFunction GetAllResourceDataProviders() { return mGetAllResourceDataProviders ? mGetAllResourceDataProviders : (mGetAllResourceDataProviders = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_MenuItems.GetAllResourceDataProviders")); }
			ScriptFunction FindValueInProviderSet() { return mFindValueInProviderSet ? mFindValueInProviderSet : (mFindValueInProviderSet = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_MenuItems.FindValueInProviderSet")); }
			ScriptFunction GetValueFromProviderSet() { return mGetValueFromProviderSet ? mGetValueFromProviderSet : (mGetValueFromProviderSet = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_MenuItems.GetValueFromProviderSet")); }
			ScriptFunction GetProviderSet() { return mGetProviderSet ? mGetProviderSet : (mGetProviderSet = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_MenuItems.GetProviderSet")); }
			ScriptFunction InitializeListElementProviders() { return mInitializeListElementProviders ? mInitializeListElementProviders : (mInitializeListElementProviders = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_MenuItems.InitializeListElementProviders")); }
			ScriptFunction RemoveListElementProvidersKey() { return mRemoveListElementProvidersKey ? mRemoveListElementProvidersKey : (mRemoveListElementProvidersKey = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_MenuItems.RemoveListElementProvidersKey")); }
			ScriptFunction AddListElementProvidersKey() { return mAddListElementProvidersKey ? mAddListElementProvidersKey : (mAddListElementProvidersKey = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_MenuItems.AddListElementProvidersKey")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProviderCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool IsProviderFiltered(ScriptName FieldName, int ProviderIdx)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ProviderIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsProviderFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	static void GetAllResourceDataProviders(ScriptClass ProviderClass, ScriptArray!(UDKUIResourceDataProvider)* Providers)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ProviderClass;
		*cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[4] = *Providers;
		StaticClass.ProcessEvent(Functions.GetAllResourceDataProviders, params.ptr, cast(void*)0);
		*Providers = *cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[4];
	}
	int FindValueInProviderSet(ScriptName ProviderFieldName, ScriptName SearchTag, ScriptString SearchValue)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderFieldName;
		*cast(ScriptName*)&params[8] = SearchTag;
		*cast(ScriptString*)&params[16] = SearchValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindValueInProviderSet, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.GetValueFromProviderSet, params.ptr, cast(void*)0);
		*OutValue = *cast(ScriptString*)&params[20];
		return *cast(bool*)&params[32];
	}
	bool GetProviderSet(ScriptName ProviderFieldName, ScriptArray!(UDKUIResourceDataProvider)* OutProviders)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderFieldName;
		*cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[8] = *OutProviders;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProviderSet, params.ptr, cast(void*)0);
		*OutProviders = *cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[8];
		return *cast(bool*)&params[20];
	}
	void InitializeListElementProviders()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeListElementProviders, cast(void*)0, cast(void*)0);
	}
	void RemoveListElementProvidersKey(ScriptName KeyName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = KeyName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveListElementProvidersKey, params.ptr, cast(void*)0);
	}
	void AddListElementProvidersKey(ScriptName KeyName, UDKUIResourceDataProvider Provider)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = KeyName;
		*cast(UDKUIResourceDataProvider*)&params[8] = Provider;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddListElementProvidersKey, params.ptr, cast(void*)0);
	}
}
