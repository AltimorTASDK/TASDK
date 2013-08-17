module UnrealScript.UDKBase.UDKUIDataStore_StringAliasBindingMap;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore_StringAliasMap;
import UnrealScript.Core.UObject;

extern(C++) interface UDKUIDataStore_StringAliasBindingMap : UIDataStore_StringAliasMap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKUIDataStore_StringAliasBindingMap")); }
	private static __gshared UDKUIDataStore_StringAliasBindingMap mDefaultProperties;
	@property final static UDKUIDataStore_StringAliasBindingMap DefaultProperties() { mixin(MGDPC("UDKUIDataStore_StringAliasBindingMap", "UDKUIDataStore_StringAliasBindingMap UDKBase.Default__UDKUIDataStore_StringAliasBindingMap")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetStringWithFieldName;
			ScriptFunction mGetBoundStringWithFieldName;
			ScriptFunction mFindMappingInBoundKeyCache;
			ScriptFunction mAddMappingToBoundKeyCache;
			ScriptFunction mClearBoundKeyCache;
		}
		public @property static final
		{
			ScriptFunction GetStringWithFieldName() { mixin(MGF("mGetStringWithFieldName", "Function UDKBase.UDKUIDataStore_StringAliasBindingMap.GetStringWithFieldName")); }
			ScriptFunction GetBoundStringWithFieldName() { mixin(MGF("mGetBoundStringWithFieldName", "Function UDKBase.UDKUIDataStore_StringAliasBindingMap.GetBoundStringWithFieldName")); }
			ScriptFunction FindMappingInBoundKeyCache() { mixin(MGF("mFindMappingInBoundKeyCache", "Function UDKBase.UDKUIDataStore_StringAliasBindingMap.FindMappingInBoundKeyCache")); }
			ScriptFunction AddMappingToBoundKeyCache() { mixin(MGF("mAddMappingToBoundKeyCache", "Function UDKBase.UDKUIDataStore_StringAliasBindingMap.AddMappingToBoundKeyCache")); }
			ScriptFunction ClearBoundKeyCache() { mixin(MGF("mClearBoundKeyCache", "Function UDKBase.UDKUIDataStore_StringAliasBindingMap.ClearBoundKeyCache")); }
		}
	}
	static struct Constants
	{
		enum SABM_FIND_FIRST_BIND = -2;
	}
	struct ControllerMap
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKUIDataStore_StringAliasBindingMap.ControllerMap")); }
		@property final auto ref
		{
			ScriptString PS3Mapping() { mixin(MGPS("ScriptString", 20)); }
			ScriptString XBoxMapping() { mixin(MGPS("ScriptString", 8)); }
			ScriptName KeyName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct BindCacheElement
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKUIDataStore_StringAliasBindingMap.BindCacheElement")); }
		@property final auto ref
		{
			int FieldIndex() { mixin(MGPS("int", 20)); }
			ScriptString MappingString() { mixin(MGPS("ScriptString", 8)); }
			ScriptName KeyName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UDKUIDataStore_StringAliasBindingMap.ControllerMap) ControllerMapArray() { mixin(MGPC("ScriptArray!(UDKUIDataStore_StringAliasBindingMap.ControllerMap)", 260)); }
		UObject.Map_Mirror CommandToBindNames() { mixin(MGPC("UObject.Map_Mirror", 200)); }
		int FakePlatform() { mixin(MGPC("int", 196)); }
	}
final:
	int GetStringWithFieldName(ScriptString FieldName, ref ScriptString MappedString)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(ScriptString*)&params[12] = MappedString;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringWithFieldName, params.ptr, cast(void*)0);
		MappedString = *cast(ScriptString*)&params[12];
		return *cast(int*)&params[24];
	}
	int GetBoundStringWithFieldName(ScriptString FieldName, ref ScriptString MappedString, int* StartIndex = null, ScriptString* BindString = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(ScriptString*)&params[12] = MappedString;
		if (StartIndex !is null)
			*cast(int*)&params[24] = *StartIndex;
		if (BindString !is null)
			*cast(ScriptString*)&params[28] = *BindString;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoundStringWithFieldName, params.ptr, cast(void*)0);
		MappedString = *cast(ScriptString*)&params[12];
		if (StartIndex !is null)
			*StartIndex = *cast(int*)&params[24];
		if (BindString !is null)
			*BindString = *cast(ScriptString*)&params[28];
		return *cast(int*)&params[40];
	}
	bool FindMappingInBoundKeyCache(ScriptString Command, ref ScriptString MappingStr, ref int FieldIndex)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(ScriptString*)&params[12] = MappingStr;
		*cast(int*)&params[24] = FieldIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindMappingInBoundKeyCache, params.ptr, cast(void*)0);
		MappingStr = *cast(ScriptString*)&params[12];
		FieldIndex = *cast(int*)&params[24];
		return *cast(bool*)&params[28];
	}
	void AddMappingToBoundKeyCache(ScriptString Command, ScriptString MappingStr, int FieldIndex)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(ScriptString*)&params[12] = MappingStr;
		*cast(int*)&params[24] = FieldIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMappingToBoundKeyCache, params.ptr, cast(void*)0);
	}
	void ClearBoundKeyCache()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearBoundKeyCache, cast(void*)0, cast(void*)0);
	}
}
