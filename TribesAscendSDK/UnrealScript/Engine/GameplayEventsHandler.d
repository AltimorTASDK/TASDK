module UnrealScript.Engine.GameplayEventsHandler;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameplayEventsReader;
import UnrealScript.Engine.GameplayEvents;

extern(C++) interface GameplayEventsHandler : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(int) EventIDFilter() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 60); }
		ScriptArray!(GameplayEvents.GameStatGroup) GroupFilter() { return *cast(ScriptArray!(GameplayEvents.GameStatGroup)*)(cast(size_t)cast(void*)this + 72); }
		GameplayEventsReader Reader() { return *cast(GameplayEventsReader*)(cast(size_t)cast(void*)this + 84); }
	}
final:
	void SetReader(GameplayEventsReader NewReader)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameplayEventsReader*)params.ptr = NewReader;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17559], params.ptr, cast(void*)0);
	}
	void PreProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17561], cast(void*)0, cast(void*)0);
	}
	void PostProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17562], cast(void*)0, cast(void*)0);
	}
	void ResolveGroupFilters()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17563], cast(void*)0, cast(void*)0);
	}
	void AddFilter(int EventID)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17566], params.ptr, cast(void*)0);
	}
	void RemoveFilter(int EventID)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17568], params.ptr, cast(void*)0);
	}
	bool IsEventFiltered(int EventID)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17570], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
