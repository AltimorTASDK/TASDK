module UnrealScript.UDKBase.UDKUIDataStore_MenuItems;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore_GameResource;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;

extern(C++) interface UDKUIDataStore_MenuItems : UIDataStore_GameResource
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKUIDataStore_MenuItems")); }
	private static __gshared UDKUIDataStore_MenuItems mDefaultProperties;
	@property final static UDKUIDataStore_MenuItems DefaultProperties() { mixin(MGDPC("UDKUIDataStore_MenuItems", "UDKUIDataStore_MenuItems UDKBase.Default__UDKUIDataStore_MenuItems")); }
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
			ScriptFunction GetProviderCount() { mixin(MGF("mGetProviderCount", "Function UDKBase.UDKUIDataStore_MenuItems.GetProviderCount")); }
			ScriptFunction IsProviderFiltered() { mixin(MGF("mIsProviderFiltered", "Function UDKBase.UDKUIDataStore_MenuItems.IsProviderFiltered")); }
			ScriptFunction GetAllResourceDataProviders() { mixin(MGF("mGetAllResourceDataProviders", "Function UDKBase.UDKUIDataStore_MenuItems.GetAllResourceDataProviders")); }
			ScriptFunction FindValueInProviderSet() { mixin(MGF("mFindValueInProviderSet", "Function UDKBase.UDKUIDataStore_MenuItems.FindValueInProviderSet")); }
			ScriptFunction GetValueFromProviderSet() { mixin(MGF("mGetValueFromProviderSet", "Function UDKBase.UDKUIDataStore_MenuItems.GetValueFromProviderSet")); }
			ScriptFunction GetProviderSet() { mixin(MGF("mGetProviderSet", "Function UDKBase.UDKUIDataStore_MenuItems.GetProviderSet")); }
			ScriptFunction InitializeListElementProviders() { mixin(MGF("mInitializeListElementProviders", "Function UDKBase.UDKUIDataStore_MenuItems.InitializeListElementProviders")); }
			ScriptFunction RemoveListElementProvidersKey() { mixin(MGF("mRemoveListElementProvidersKey", "Function UDKBase.UDKUIDataStore_MenuItems.RemoveListElementProvidersKey")); }
			ScriptFunction AddListElementProvidersKey() { mixin(MGF("mAddListElementProvidersKey", "Function UDKBase.UDKUIDataStore_MenuItems.AddListElementProvidersKey")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(int) EnabledMutators() { mixin(MGPC("ScriptArray!(int)", 204)); }
		ScriptArray!(int) MapCycle() { mixin(MGPC("ScriptArray!(int)", 216)); }
		ScriptArray!(int) WeaponPriority() { mixin(MGPC("ScriptArray!(int)", 228)); }
		int GameModeFilter() { mixin(MGPC("int", 240)); }
		ScriptClass MapInfoDataProviderClass() { mixin(MGPC("ScriptClass", 200)); }
		Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC("Pointer", 196)); }
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
	static void GetAllResourceDataProviders(ScriptClass ProviderClass, ref ScriptArray!(UDKUIResourceDataProvider) Providers)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ProviderClass;
		*cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[4] = Providers;
		StaticClass.ProcessEvent(Functions.GetAllResourceDataProviders, params.ptr, cast(void*)0);
		Providers = *cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[4];
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
	bool GetValueFromProviderSet(ScriptName ProviderFieldName, ScriptName SearchTag, int ListIndex, ref ScriptString OutValue)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderFieldName;
		*cast(ScriptName*)&params[8] = SearchTag;
		*cast(int*)&params[16] = ListIndex;
		*cast(ScriptString*)&params[20] = OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetValueFromProviderSet, params.ptr, cast(void*)0);
		OutValue = *cast(ScriptString*)&params[20];
		return *cast(bool*)&params[32];
	}
	bool GetProviderSet(ScriptName ProviderFieldName, ref ScriptArray!(UDKUIResourceDataProvider) OutProviders)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderFieldName;
		*cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[8] = OutProviders;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProviderSet, params.ptr, cast(void*)0);
		OutProviders = *cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[8];
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
