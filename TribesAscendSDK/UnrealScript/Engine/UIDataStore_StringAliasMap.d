module UnrealScript.Engine.UIDataStore_StringAliasMap;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataStore_StringBase;

extern(C++) interface UIDataStore_StringAliasMap : UIDataStore_StringBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStore_StringAliasMap")); }
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
			ScriptFunction GetPlayerOwner() { return mGetPlayerOwner ? mGetPlayerOwner : (mGetPlayerOwner = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_StringAliasMap.GetPlayerOwner")); }
			ScriptFunction FindMappingWithFieldName() { return mFindMappingWithFieldName ? mFindMappingWithFieldName : (mFindMappingWithFieldName = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_StringAliasMap.FindMappingWithFieldName")); }
			ScriptFunction GetStringWithFieldName() { return mGetStringWithFieldName ? mGetStringWithFieldName : (mGetStringWithFieldName = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_StringAliasMap.GetStringWithFieldName")); }
		}
	}
	struct UIMenuInputMap
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.UIDataStore_StringAliasMap.UIMenuInputMap")); }
		@property final auto ref
		{
			ScriptString MappedText() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
			ScriptName Set() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			ScriptName FieldName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIDataStore_StringAliasMap.UIMenuInputMap) MenuInputMapArray() { return *cast(ScriptArray!(UIDataStore_StringAliasMap.UIMenuInputMap)*)(cast(size_t)cast(void*)this + 120); }
		int PlayerIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
		UObject.Map_Mirror MenuInputSets() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 132); }
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
}
