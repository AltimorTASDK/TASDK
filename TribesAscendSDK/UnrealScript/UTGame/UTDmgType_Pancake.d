module UnrealScript.UTGame.UTDmgType_Pancake;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDmgType_RanOver;
import UnrealScript.UTGame.UTPlayerController;

extern(C++) interface UTDmgType_Pancake : UTDmgType_RanOver
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDmgType_Pancake")); }
	private static __gshared UTDmgType_Pancake mDefaultProperties;
	@property final static UTDmgType_Pancake DefaultProperties() { mixin(MGDPC("UTDmgType_Pancake", "UTDmgType_Pancake UTGame.Default__UTDmgType_Pancake")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSmallReward;
		public @property static final ScriptFunction SmallReward() { mixin(MGF("mSmallReward", "Function UTGame.UTDmgType_Pancake.SmallReward")); }
	}
	final static void SmallReward(UTPlayerController Killer, int KillCount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Killer;
		*cast(int*)&params[4] = KillCount;
		StaticClass.ProcessEvent(Functions.SmallReward, params.ptr, cast(void*)0);
	}
}
