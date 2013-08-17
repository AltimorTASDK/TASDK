module UnrealScript.UDKBase.UDKTeamOwnedInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ReplicationInfo;
import UnrealScript.Engine.TeamInfo;

extern(C++) interface UDKTeamOwnedInfo : ReplicationInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKTeamOwnedInfo")()); }
	private static __gshared UDKTeamOwnedInfo mDefaultProperties;
	@property final static UDKTeamOwnedInfo DefaultProperties() { mixin(MGDPC!(UDKTeamOwnedInfo, "UDKTeamOwnedInfo UDKBase.Default__UDKTeamOwnedInfo")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetTeamNum;
		public @property static final ScriptFunction GetTeamNum() { mixin(MGF!("mGetTeamNum", "Function UDKBase.UDKTeamOwnedInfo.GetTeamNum")()); }
	}
	@property final auto ref TeamInfo Team() { mixin(MGPC!("TeamInfo", 476)()); }
	final ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
}
