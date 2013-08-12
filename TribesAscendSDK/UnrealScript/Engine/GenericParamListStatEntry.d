module UnrealScript.Engine.GenericParamListStatEntry;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameplayEventsWriter;

extern(C++) interface GenericParamListStatEntry : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GenericParamListStatEntry")); }
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
			ScriptFunction AddFloat() { return mAddFloat ? mAddFloat : (mAddFloat = ScriptObject.Find!(ScriptFunction)("Function Engine.GenericParamListStatEntry.AddFloat")); }
			ScriptFunction AddInt() { return mAddInt ? mAddInt : (mAddInt = ScriptObject.Find!(ScriptFunction)("Function Engine.GenericParamListStatEntry.AddInt")); }
			ScriptFunction AddVector() { return mAddVector ? mAddVector : (mAddVector = ScriptObject.Find!(ScriptFunction)("Function Engine.GenericParamListStatEntry.AddVector")); }
			ScriptFunction AddString() { return mAddString ? mAddString : (mAddString = ScriptObject.Find!(ScriptFunction)("Function Engine.GenericParamListStatEntry.AddString")); }
			ScriptFunction GetFloat() { return mGetFloat ? mGetFloat : (mGetFloat = ScriptObject.Find!(ScriptFunction)("Function Engine.GenericParamListStatEntry.GetFloat")); }
			ScriptFunction GetInt() { return mGetInt ? mGetInt : (mGetInt = ScriptObject.Find!(ScriptFunction)("Function Engine.GenericParamListStatEntry.GetInt")); }
			ScriptFunction GetVector() { return mGetVector ? mGetVector : (mGetVector = ScriptObject.Find!(ScriptFunction)("Function Engine.GenericParamListStatEntry.GetVector")); }
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function Engine.GenericParamListStatEntry.GetString")); }
			ScriptFunction CommitToDisk() { return mCommitToDisk ? mCommitToDisk : (mCommitToDisk = ScriptObject.Find!(ScriptFunction)("Function Engine.GenericParamListStatEntry.CommitToDisk")); }
		}
	}
	@property final auto ref
	{
		GameplayEventsWriter Writer() { return *cast(GameplayEventsWriter*)(cast(size_t)cast(void*)this + 64); }
		UObject.Pointer StatEvent() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
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
	bool GetFloat(ScriptName ParamName, float* out_Float)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(float*)&params[8] = *out_Float;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFloat, params.ptr, cast(void*)0);
		*out_Float = *cast(float*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetInt(ScriptName ParamName, int* out_int)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(int*)&params[8] = *out_int;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetInt, params.ptr, cast(void*)0);
		*out_int = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetVector(ScriptName ParamName, Vector* out_vector)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(Vector*)&params[8] = *out_vector;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVector, params.ptr, cast(void*)0);
		*out_vector = *cast(Vector*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetString(ScriptName ParamName, ScriptString* out_string)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(ScriptString*)&params[8] = *out_string;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		*out_string = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	void CommitToDisk()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CommitToDisk, cast(void*)0, cast(void*)0);
	}
}
