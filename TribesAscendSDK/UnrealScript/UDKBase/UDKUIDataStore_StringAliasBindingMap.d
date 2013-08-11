module UnrealScript.UDKBase.UDKUIDataStore_StringAliasBindingMap;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_StringAliasMap;
import UnrealScript.Core.UObject;

extern(C++) interface UDKUIDataStore_StringAliasBindingMap : UIDataStore_StringAliasMap
{
	public static immutable auto SABM_FIND_FIRST_BIND = -2;
	struct ControllerMap
	{
		public @property final auto ref ScriptString PS3Mapping() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
		private ubyte __PS3Mapping[12];
		public @property final auto ref ScriptString XBoxMapping() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __XBoxMapping[12];
		public @property final auto ref ScriptName KeyName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __KeyName[8];
	}
	struct BindCacheElement
	{
		public @property final auto ref int FieldIndex() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __FieldIndex[4];
		public @property final auto ref ScriptString MappingString() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __MappingString[12];
		public @property final auto ref ScriptName KeyName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __KeyName[8];
	}
	public @property final auto ref ScriptArray!(UDKUIDataStore_StringAliasBindingMap.ControllerMap) ControllerMapArray() { return *cast(ScriptArray!(UDKUIDataStore_StringAliasBindingMap.ControllerMap)*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref UObject.Map_Mirror CommandToBindNames() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref int FakePlatform() { return *cast(int*)(cast(size_t)cast(void*)this + 196); }
	final int GetStringWithFieldName(ScriptString FieldName, ScriptString* MappedString)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(ScriptString*)&params[12] = *MappedString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35667], params.ptr, cast(void*)0);
		*MappedString = *cast(ScriptString*)&params[12];
		return *cast(int*)&params[24];
	}
	final int GetBoundStringWithFieldName(ScriptString FieldName, ScriptString* MappedString, int* StartIndex, ScriptString* BindString)
	{
		ubyte params[44];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(ScriptString*)&params[12] = *MappedString;
		*cast(int*)&params[24] = *StartIndex;
		*cast(ScriptString*)&params[28] = *BindString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35671], params.ptr, cast(void*)0);
		*MappedString = *cast(ScriptString*)&params[12];
		*StartIndex = *cast(int*)&params[24];
		*BindString = *cast(ScriptString*)&params[28];
		return *cast(int*)&params[40];
	}
	final bool FindMappingInBoundKeyCache(ScriptString Command, ScriptString* MappingStr, int* FieldIndex)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(ScriptString*)&params[12] = *MappingStr;
		*cast(int*)&params[24] = *FieldIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35677], params.ptr, cast(void*)0);
		*MappingStr = *cast(ScriptString*)&params[12];
		*FieldIndex = *cast(int*)&params[24];
		return *cast(bool*)&params[28];
	}
	final void AddMappingToBoundKeyCache(ScriptString Command, ScriptString MappingStr, int FieldIndex)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(ScriptString*)&params[12] = MappingStr;
		*cast(int*)&params[24] = FieldIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35682], params.ptr, cast(void*)0);
	}
	final void ClearBoundKeyCache()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35686], cast(void*)0, cast(void*)0);
	}
}
