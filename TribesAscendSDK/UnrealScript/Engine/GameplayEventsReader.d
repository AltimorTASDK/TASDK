module UnrealScript.Engine.GameplayEventsReader;

import ScriptClasses;
import UnrealScript.Engine.GameplayEvents;
import UnrealScript.Engine.GameplayEventsHandler;

extern(C++) interface GameplayEventsReader : GameplayEvents
{
public extern(D):
	@property final auto ref ScriptArray!(GameplayEventsHandler) RegisteredHandlers() { return *cast(ScriptArray!(GameplayEventsHandler)*)(cast(size_t)cast(void*)this + 336); }
final:
	bool OpenStatsFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17575], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void CloseStatsFile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17578], cast(void*)0, cast(void*)0);
	}
	bool SerializeHeader()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17579], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RegisterHandler(GameplayEventsHandler NewHandler)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameplayEventsHandler*)params.ptr = NewHandler;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17581], params.ptr, cast(void*)0);
	}
	void UnregisterHandler(GameplayEventsHandler ExistingHandler)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameplayEventsHandler*)params.ptr = ExistingHandler;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17584], params.ptr, cast(void*)0);
	}
	void ProcessStreamStart()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17587], cast(void*)0, cast(void*)0);
	}
	void ProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17588], cast(void*)0, cast(void*)0);
	}
	void ProcessStreamEnd()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17589], cast(void*)0, cast(void*)0);
	}
	ScriptString GetSessionID()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17590], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	int GetTitleID()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17592], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetPlatform()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17594], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptString GetSessionTimestamp()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17596], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	float GetSessionStart()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17598], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetSessionEnd()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17600], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetSessionDuration()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17602], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
