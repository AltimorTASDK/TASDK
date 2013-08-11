module UnrealScript.Engine.TeamInfo;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ReplicationInfo;

extern(C++) interface TeamInfo : ReplicationInfo
{
public extern(D):
	@property final auto ref
	{
		int TeamIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
		float Score() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
		UObject.Color TeamColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 500); }
		int Size() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
		ScriptString TeamName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 476); }
	}
final:
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17470], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27715], params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27717], cast(void*)0, cast(void*)0);
	}
	bool AddToTeam(Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27719], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RemoveFromTeam(Controller Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27722], params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27724], params.ptr, cast(void*)0);
		return params[0];
	}
}
