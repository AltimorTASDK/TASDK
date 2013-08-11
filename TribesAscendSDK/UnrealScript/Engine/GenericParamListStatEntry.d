module UnrealScript.Engine.GenericParamListStatEntry;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameplayEventsWriter;

extern(C++) interface GenericParamListStatEntry : UObject
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18131], params.ptr, cast(void*)0);
	}
	void AddInt(ScriptName ParamName, int Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(int*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18134], params.ptr, cast(void*)0);
	}
	void AddVector(ScriptName ParamName, Vector Value)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(Vector*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18137], params.ptr, cast(void*)0);
	}
	void AddString(ScriptName ParamName, ScriptString Value)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(ScriptString*)&params[8] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18140], params.ptr, cast(void*)0);
	}
	bool GetFloat(ScriptName ParamName, float* out_Float)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(float*)&params[8] = *out_Float;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18143], params.ptr, cast(void*)0);
		*out_Float = *cast(float*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetInt(ScriptName ParamName, int* out_int)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(int*)&params[8] = *out_int;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18147], params.ptr, cast(void*)0);
		*out_int = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetVector(ScriptName ParamName, Vector* out_vector)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(Vector*)&params[8] = *out_vector;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18151], params.ptr, cast(void*)0);
		*out_vector = *cast(Vector*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetString(ScriptName ParamName, ScriptString* out_string)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParamName;
		*cast(ScriptString*)&params[8] = *out_string;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18155], params.ptr, cast(void*)0);
		*out_string = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	void CommitToDisk()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18159], cast(void*)0, cast(void*)0);
	}
}
