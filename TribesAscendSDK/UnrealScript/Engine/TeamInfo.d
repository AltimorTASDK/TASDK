module UnrealScript.Engine.TeamInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ReplicationInfo;

extern(C++) interface TeamInfo : ReplicationInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TeamInfo")()); }
	private static __gshared TeamInfo mDefaultProperties;
	@property final static TeamInfo DefaultProperties() { mixin(MGDPC!(TeamInfo, "TeamInfo Engine.Default__TeamInfo")()); }
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
			ScriptFunction GetHumanReadableName() { mixin(MGF!("mGetHumanReadableName", "Function Engine.TeamInfo.GetHumanReadableName")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function Engine.TeamInfo.ReplicatedEvent")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.TeamInfo.Destroyed")()); }
			ScriptFunction AddToTeam() { mixin(MGF!("mAddToTeam", "Function Engine.TeamInfo.AddToTeam")()); }
			ScriptFunction RemoveFromTeam() { mixin(MGF!("mRemoveFromTeam", "Function Engine.TeamInfo.RemoveFromTeam")()); }
			ScriptFunction GetTeamNum() { mixin(MGF!("mGetTeamNum", "Function Engine.TeamInfo.GetTeamNum")()); }
		}
	}
	@property final auto ref
	{
		int TeamIndex() { mixin(MGPC!(int, 496)()); }
		float Score() { mixin(MGPC!(float, 492)()); }
		UObject.Color TeamColor() { mixin(MGPC!(UObject.Color, 500)()); }
		int Size() { mixin(MGPC!(int, 488)()); }
		ScriptString TeamName() { mixin(MGPC!(ScriptString, 476)()); }
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
