module UnrealScript.TribesGame.TrProj_StealthSpinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_StealthSpinfusor : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_StealthSpinfusor")); }
	private static __gshared TrProj_StealthSpinfusor mDefaultProperties;
	@property final static TrProj_StealthSpinfusor DefaultProperties() { mixin(MGDPC("TrProj_StealthSpinfusor", "TrProj_StealthSpinfusor TribesGame.Default__TrProj_StealthSpinfusor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF("mSpawnFlightEffects", "Function TribesGame.TrProj_StealthSpinfusor.SpawnFlightEffects")); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
