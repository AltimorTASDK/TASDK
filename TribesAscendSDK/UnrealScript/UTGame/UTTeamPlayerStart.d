module UnrealScript.UTGame.UTTeamPlayerStart;

import ScriptClasses;
import UnrealScript.UDKBase.UDKTeamPlayerStart;

extern(C++) interface UTTeamPlayerStart : UDKTeamPlayerStart
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTTeamPlayerStart")); }
	private static __gshared UTTeamPlayerStart mDefaultProperties;
	@property final static UTTeamPlayerStart DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTTeamPlayerStart)("UTTeamPlayerStart UTGame.Default__UTTeamPlayerStart")); }
}
