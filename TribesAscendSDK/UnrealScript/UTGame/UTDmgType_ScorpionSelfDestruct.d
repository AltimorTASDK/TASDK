module UnrealScript.UTGame.UTDmgType_ScorpionSelfDestruct;

import ScriptClasses;
import UnrealScript.UTGame.UTDmgType_Burning;
import UnrealScript.UTGame.UTPlayerReplicationInfo;

extern(C++) interface UTDmgType_ScorpionSelfDestruct : UTDmgType_Burning
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDmgType_ScorpionSelfDestruct")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIncrementKills;
		public @property static final ScriptFunction IncrementKills() { return mIncrementKills ? mIncrementKills : (mIncrementKills = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDmgType_ScorpionSelfDestruct.IncrementKills")); }
	}
	@property final auto ref int DamageGivenForSelfDestruct() { return *cast(int*)(cast(size_t)cast(void*)this + 300); }
	final static int IncrementKills(UTPlayerReplicationInfo KillerPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = KillerPRI;
		StaticClass.ProcessEvent(Functions.IncrementKills, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}
