module UnrealScript.UDKBase.UDKUIDataStore_StringAliasMap;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore_StringAliasMap;

extern(C++) interface UDKUIDataStore_StringAliasMap : UIDataStore_StringAliasMap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKUIDataStore_StringAliasMap")()); }
	private static __gshared UDKUIDataStore_StringAliasMap mDefaultProperties;
	@property final static UDKUIDataStore_StringAliasMap DefaultProperties() { mixin(MGDPC!(UDKUIDataStore_StringAliasMap, "UDKUIDataStore_StringAliasMap UDKBase.Default__UDKUIDataStore_StringAliasMap")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetStringWithFieldName;
		public @property static final ScriptFunction GetStringWithFieldName() { mixin(MGF!("mGetStringWithFieldName", "Function UDKBase.UDKUIDataStore_StringAliasMap.GetStringWithFieldName")()); }
	}
	@property final auto ref int FakePlatform() { mixin(MGPC!(int, 196)()); }
	final int GetStringWithFieldName(ScriptString FieldName, ref ScriptString MappedString)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(ScriptString*)&params[12] = MappedString;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringWithFieldName, params.ptr, cast(void*)0);
		*MappedString = *cast(ScriptString*)&params[12];
		return *cast(int*)&params[24];
	}
}
