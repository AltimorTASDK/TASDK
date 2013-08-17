module UnrealScript.Engine.GenericParamListStatEntry;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameplayEventsWriter;

extern(C++) interface GenericParamListStatEntry : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.GenericParamListStatEntry")()); }
	private static __gshared GenericParamListStatEntry mDefaultProperties;
	@property final static GenericParamListStatEntry DefaultProperties() { mixin(MGDPC!(GenericParamListStatEntry, "GenericParamListStatEntry Engine.Default__GenericParamListStatEntry")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddFloat;
			ScriptFunction mAddInt;
			ScriptFunction mAddVector;
			ScriptFunction mAddString;
			ScriptFunction mGetFloat;
			ScriptFunction mGetInt;
			ScriptFunction mGetVector;
			ScriptFunction mGetString;
			ScriptFunction mCommitToDisk;
		}
		public @property static final
		{
			ScriptFunction AddFloat() { mixin(MGF!("mAddFloat", "Function Engine.GenericParamListStatEntry.AddFloat")()); }
			ScriptFunction AddInt() { mixin(MGF!("mAddInt", "Function Engine.GenericParamListStatEntry.AddInt")()); }
			ScriptFunction AddVector() { mixin(MGF!("mAddVector", "Function Engine.GenericParamListStatEntry.AddVector")()); }
			ScriptFunction AddString() { mixin(MGF!("mAddString", "Function Engine.GenericParamListStatEntry.AddString")()); }
			ScriptFunction GetFloat() { mixin(MGF!("mGetFloat", "Function Engine.GenericParamListStatEntry.GetFloat")()); }
			ScriptFunction GetInt() { mixin(MGF!("mGetInt", "Function Engine.GenericParamListStatEntry.GetInt")()); }
			ScriptFunction GetVector() { mixin(MGF!("mGetVector", "Function Engine.GenericParamListStatEntry.GetVector")()); }
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function Engine.GenericParamListStatEntry.GetString")()); }
			ScriptFunction CommitToDisk() { mixin(MGF!("mCommitToDisk", "Function Engine.GenericParamListStatEntry.CommitToDisk")()); }
		}
	}
	@property final auto ref
	{
		GameplayEventsWriter Writer() { mixin(MGPC!(GameplayEventsWriter, 64)()); }
		UObject.Pointer StatEvent() { mixin(MGPC!(UObject.Pointer, 60)()); }
	}
final:
	void AddFloat(ScriptName ParamName, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(float*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFloat, params.ptr, cast(void*)0);
	}
	void AddInt(ScriptName ParamName, int Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(int*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddInt, params.ptr, cast(void*)0);
	}
	void AddVector(ScriptName ParamName, Vector Value)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(Vector*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVector, params.ptr, cast(void*)0);
	}
	void AddString(ScriptName ParamName, ScriptString Value)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(ScriptString*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddString, params.ptr, cast(void*)0);
	}
	bool GetFloat(ScriptName ParamName, ref float out_Float)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(float*)&params[8] = out_Float;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFloat, params.ptr, cast(void*)0);
		*out_Float = *cast(float*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetInt(ScriptName ParamName, ref int out_int)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(int*)&params[8] = out_int;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetInt, params.ptr, cast(void*)0);
		*out_int = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetVector(ScriptName ParamName, ref Vector out_vector)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(Vector*)&params[8] = out_vector;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVector, params.ptr, cast(void*)0);
		*out_vector = *cast(Vector*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetString(ScriptName ParamName, ref ScriptString out_string)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(ScriptString*)&params[8] = out_string;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		*out_string = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	void CommitToDisk()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CommitToDisk, cast(void*)0, cast(void*)0);
	}
}
