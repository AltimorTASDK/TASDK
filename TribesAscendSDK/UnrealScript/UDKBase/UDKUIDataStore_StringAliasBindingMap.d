module UnrealScript.UDKBase.UDKUIDataStore_StringAliasBindingMap;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_StringAliasMap;
import UnrealScript.Core.UObject;

extern(C++) interface UDKUIDataStore_StringAliasBindingMap : UIDataStore_StringAliasMap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKUIDataStore_StringAliasBindingMap")); }
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
			ScriptFunction GetStringWithFieldName() { return mGetStringWithFieldName ? mGetStringWithFieldName : (mGetStringWithFieldName = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringAliasBindingMap.GetStringWithFieldName")); }
			ScriptFunction GetBoundStringWithFieldName() { return mGetBoundStringWithFieldName ? mGetBoundStringWithFieldName : (mGetBoundStringWithFieldName = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringAliasBindingMap.GetBoundStringWithFieldName")); }
			ScriptFunction FindMappingInBoundKeyCache() { return mFindMappingInBoundKeyCache ? mFindMappingInBoundKeyCache : (mFindMappingInBoundKeyCache = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringAliasBindingMap.FindMappingInBoundKeyCache")); }
			ScriptFunction AddMappingToBoundKeyCache() { return mAddMappingToBoundKeyCache ? mAddMappingToBoundKeyCache : (mAddMappingToBoundKeyCache = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringAliasBindingMap.AddMappingToBoundKeyCache")); }
			ScriptFunction ClearBoundKeyCache() { return mClearBoundKeyCache ? mClearBoundKeyCache : (mClearBoundKeyCache = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringAliasBindingMap.ClearBoundKeyCache")); }
		}
	}
	enum SABM_FIND_FIRST_BIND = -2;
	struct ControllerMap
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKUIDataStore_StringAliasBindingMap.ControllerMap")); }
		@property final auto ref
		{
			ScriptString PS3Mapping() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
			ScriptString XBoxMapping() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
			ScriptName KeyName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct BindCacheElement
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKUIDataStore_StringAliasBindingMap.BindCacheElement")); }
		@property final auto ref
		{
			int FieldIndex() { return *cast(int*)(cast(size_t)&this + 20); }
			ScriptString MappingString() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
			ScriptName KeyName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UDKUIDataStore_StringAliasBindingMap.ControllerMap) ControllerMapArray() { return *cast(ScriptArray!(UDKUIDataStore_StringAliasBindingMap.ControllerMap)*)(cast(size_t)cast(void*)this + 260); }
		UObject.Map_Mirror CommandToBindNames() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 200); }
		int FakePlatform() { return *cast(int*)(cast(size_t)cast(void*)this + 196); }
	}
final:
	int GetStringWithFieldName(ScriptString FieldName, ScriptString* MappedString)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(ScriptString*)&params[12] = *MappedString;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringWithFieldName, params.ptr, cast(void*)0);
		*MappedString = *cast(ScriptString*)&params[12];
		return *cast(int*)&params[24];
	}
	int GetBoundStringWithFieldName(ScriptString FieldName, ScriptString* MappedString, int* StartIndex, ScriptString* BindString)
	{
		ubyte params[44];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(ScriptString*)&params[12] = *MappedString;
		*cast(int*)&params[24] = *StartIndex;
		*cast(ScriptString*)&params[28] = *BindString;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoundStringWithFieldName, params.ptr, cast(void*)0);
		*MappedString = *cast(ScriptString*)&params[12];
		*StartIndex = *cast(int*)&params[24];
		*BindString = *cast(ScriptString*)&params[28];
		return *cast(int*)&params[40];
	}
	bool FindMappingInBoundKeyCache(ScriptString Command, ScriptString* MappingStr, int* FieldIndex)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(ScriptString*)&params[12] = *MappingStr;
		*cast(int*)&params[24] = *FieldIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindMappingInBoundKeyCache, params.ptr, cast(void*)0);
		*MappingStr = *cast(ScriptString*)&params[12];
		*FieldIndex = *cast(int*)&params[24];
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
