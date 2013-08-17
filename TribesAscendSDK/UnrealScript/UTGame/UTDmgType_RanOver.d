module UnrealScript.UTGame.UTDmgType_RanOver;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTDamageType;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.UTGame.UTPlayerController;

extern(C++) interface UTDmgType_RanOver : UTDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDmgType_RanOver")); }
	private static __gshared UTDmgType_RanOver mDefaultProperties;
	@property final static UTDmgType_RanOver DefaultProperties() { mixin(MGDPC("UTDmgType_RanOver", "UTDmgType_RanOver UTGame.Default__UTDmgType_RanOver")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIncrementKills;
			ScriptFunction mSmallReward;
			ScriptFunction mSpawnHitEffect;
		}
		public @property static final
		{
			ScriptFunction IncrementKills() { mixin(MGF("mIncrementKills", "Function UTGame.UTDmgType_RanOver.IncrementKills")); }
			ScriptFunction SmallReward() { mixin(MGF("mSmallReward", "Function UTGame.UTDmgType_RanOver.SmallReward")); }
			ScriptFunction SpawnHitEffect() { mixin(MGF("mSpawnHitEffect", "Function UTGame.UTDmgType_RanOver.SpawnHitEffect")); }
		}
	}
	@property final auto ref int NumMessages() { mixin(MGPC("int", 300)); }
final:
	static int IncrementKills(UTPlayerReplicationInfo KillerPRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = KillerPRI;
		StaticClass.ProcessEvent(Functions.IncrementKills, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	static void SmallReward(UTPlayerController Killer, int KillCount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = Killer;
		*cast(int*)&params[4] = KillCount;
		StaticClass.ProcessEvent(Functions.SmallReward, params.ptr, cast(void*)0);
	}
	static void SpawnHitEffect(Pawn P, float Damage, Vector Momentum, ScriptName BoneName, Vector HitLocation)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = Damage;
		*cast(Vector*)&params[8] = Momentum;
		*cast(ScriptName*)&params[20] = BoneName;
		*cast(Vector*)&params[28] = HitLocation;
		StaticClass.ProcessEvent(Functions.SpawnHitEffect, params.ptr, cast(void*)0);
	}
}
