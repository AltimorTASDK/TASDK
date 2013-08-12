module UnrealScript.UDKBase.UDKTeamOwnedInfo;

import ScriptClasses;
import UnrealScript.Engine.ReplicationInfo;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface UDKTeamOwnedInfo : ReplicationInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKTeamOwnedInfo")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetTeamNum;
		public @property static final ScriptFunction GetTeamNum() { return mGetTeamNum ? mGetTeamNum : (mGetTeamNum = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKTeamOwnedInfo.GetTeamNum")); }
	}
	@property final auto ref TeamInfo Team() { return *cast(TeamInfo*)(cast(size_t)cast(void*)this + 476); }
	final ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
}
