module UnrealScript.Engine.TeamInfo;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ReplicationInfo;

extern(C++) interface TeamInfo : ReplicationInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TeamInfo")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetHumanReadableName;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mDestroyed;
			ScriptFunction mAddToTeam;
			ScriptFunction mRemoveFromTeam;
			ScriptFunction mGetTeamNum;
		}
		public @property static final
		{
			ScriptFunction GetHumanReadableName() { return mGetHumanReadableName ? mGetHumanReadableName : (mGetHumanReadableName = ScriptObject.Find!(ScriptFunction)("Function Engine.TeamInfo.GetHumanReadableName")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.TeamInfo.ReplicatedEvent")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.TeamInfo.Destroyed")); }
			ScriptFunction AddToTeam() { return mAddToTeam ? mAddToTeam : (mAddToTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.TeamInfo.AddToTeam")); }
			ScriptFunction RemoveFromTeam() { return mRemoveFromTeam ? mRemoveFromTeam : (mRemoveFromTeam = ScriptObject.Find!(ScriptFunction)("Function Engine.TeamInfo.RemoveFromTeam")); }
			ScriptFunction GetTeamNum() { return mGetTeamNum ? mGetTeamNum : (mGetTeamNum = ScriptObject.Find!(ScriptFunction)("Function Engine.TeamInfo.GetTeamNum")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHumanReadableName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	bool AddToTeam(Controller Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToTeam, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RemoveFromTeam(Controller Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveFromTeam, params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
}
