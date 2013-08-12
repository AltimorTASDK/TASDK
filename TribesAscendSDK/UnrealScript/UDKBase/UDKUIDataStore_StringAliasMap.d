module UnrealScript.UDKBase.UDKUIDataStore_StringAliasMap;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_StringAliasMap;

extern(C++) interface UDKUIDataStore_StringAliasMap : UIDataStore_StringAliasMap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKUIDataStore_StringAliasMap")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetStringWithFieldName;
		public @property static final ScriptFunction GetStringWithFieldName() { return mGetStringWithFieldName ? mGetStringWithFieldName : (mGetStringWithFieldName = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringAliasMap.GetStringWithFieldName")); }
	}
	@property final auto ref int FakePlatform() { return *cast(int*)(cast(size_t)cast(void*)this + 196); }
	final int GetStringWithFieldName(ScriptString FieldName, ScriptString* MappedString)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(ScriptString*)&params[12] = *MappedString;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringWithFieldName, params.ptr, cast(void*)0);
		*MappedString = *cast(ScriptString*)&params[12];
		return *cast(int*)&params[24];
	}
}
