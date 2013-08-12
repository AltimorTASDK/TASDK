module UnrealScript.UTGame.UTTeamDeathMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTDeathMessage;

extern(C++) interface UTTeamDeathMessage : UTDeathMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTTeamDeathMessage")); }
	private static __gshared UTTeamDeathMessage mDefaultProperties;
	@property final static UTTeamDeathMessage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTTeamDeathMessage)("UTTeamDeathMessage UTGame.Default__UTTeamDeathMessage")); }
}
