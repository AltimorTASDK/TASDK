module UnrealScript.Engine.UIDataStore_StringAliasMap;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataStore_StringBase;

extern(C++) interface UIDataStore_StringAliasMap : UIDataStore_StringBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataStore_StringAliasMap")()); }
	private static __gshared UIDataStore_StringAliasMap mDefaultProperties;
	@property final static UIDataStore_StringAliasMap DefaultProperties() { mixin(MGDPC!(UIDataStore_StringAliasMap, "UIDataStore_StringAliasMap Engine.Default__UIDataStore_StringAliasMap")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetPlayerOwner;
			ScriptFunction mFindMappingWithFieldName;
			ScriptFunction mGetStringWithFieldName;
		}
		public @property static final
		{
			ScriptFunction GetPlayerOwner() { mixin(MGF!("mGetPlayerOwner", "Function Engine.UIDataStore_StringAliasMap.GetPlayerOwner")()); }
			ScriptFunction FindMappingWithFieldName() { mixin(MGF!("mFindMappingWithFieldName", "Function Engine.UIDataStore_StringAliasMap.FindMappingWithFieldName")()); }
			ScriptFunction GetStringWithFieldName() { mixin(MGF!("mGetStringWithFieldName", "Function Engine.UIDataStore_StringAliasMap.GetStringWithFieldName")()); }
		}
	}
	struct UIMenuInputMap
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIDataStore_StringAliasMap.UIMenuInputMap")()); }
		@property final auto ref
		{
			ScriptString MappedText() { mixin(MGPS!(ScriptString, 16)()); }
			ScriptName Set() { mixin(MGPS!(ScriptName, 8)()); }
			ScriptName FieldName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIDataStore_StringAliasMap.UIMenuInputMap) MenuInputMapArray() { mixin(MGPC!(ScriptArray!(UIDataStore_StringAliasMap.UIMenuInputMap), 120)()); }
		int PlayerIndex() { mixin(MGPC!(int, 192)()); }
		UObject.Map_Mirror MenuInputSets() { mixin(MGPC!(UObject.Map_Mirror, 132)()); }
	}
final:
	LocalPlayer GetPlayerOwner()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerOwner, params.ptr, cast(void*)0);
		return *cast(LocalPlayer*)params.ptr;
	}
	int FindMappingWithFieldName(ScriptString FieldName, ScriptString SetName)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(ScriptString*)&params[12] = SetName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindMappingWithFieldName, params.ptr, cast(void*)0);
		return *cast(int*)&params[24];
	}
	int GetStringWithFieldName(ScriptString FieldName, ref ScriptString MappedString)
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
