module UnrealScript.UTGame.UTDmgType_Burning;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTDamageType;

extern(C++) interface UTDmgType_Burning : UTDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDmgType_Burning")); }
	private static __gshared UTDmgType_Burning mDefaultProperties;
	@property final static UTDmgType_Burning DefaultProperties() { mixin(MGDPC("UTDmgType_Burning", "UTDmgType_Burning UTGame.Default__UTDmgType_Burning")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpawnHitEffect;
			ScriptFunction mGetHitEffectDuration;
		}
		public @property static final
		{
			ScriptFunction SpawnHitEffect() { mixin(MGF("mSpawnHitEffect", "Function UTGame.UTDmgType_Burning.SpawnHitEffect")); }
			ScriptFunction GetHitEffectDuration() { mixin(MGF("mGetHitEffectDuration", "Function UTGame.UTDmgType_Burning.GetHitEffectDuration")); }
		}
	}
final:
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
	static float GetHitEffectDuration(Pawn P, float Damage)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = Damage;
		StaticClass.ProcessEvent(Functions.GetHitEffectDuration, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
}
