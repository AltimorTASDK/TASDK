module UnrealScript.UDKBase.UDKUIDataStore_StringAliasMap;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_StringAliasMap;

extern(C++) interface UDKUIDataStore_StringAliasMap : UIDataStore_StringAliasMap
{
public extern(D):
	@property final auto ref int FakePlatform() { return *cast(int*)(cast(size_t)cast(void*)this + 196); }
	final int GetStringWithFieldName(ScriptString FieldName, ScriptString* MappedString)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(ScriptString*)&params[12] = *MappedString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35688], params.ptr, cast(void*)0);
		*MappedString = *cast(ScriptString*)&params[12];
		return *cast(int*)&params[24];
	}
}
