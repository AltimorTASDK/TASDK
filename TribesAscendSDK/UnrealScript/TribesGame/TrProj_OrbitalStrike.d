module UnrealScript.TribesGame.TrProj_OrbitalStrike;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_CallInBase;

extern(C++) interface TrProj_OrbitalStrike : TrProj_CallInBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_OrbitalStrike")); }
	private static __gshared TrProj_OrbitalStrike mDefaultProperties;
	@property final static TrProj_OrbitalStrike DefaultProperties() { mixin(MGDPC("TrProj_OrbitalStrike", "TrProj_OrbitalStrike TribesGame.Default__TrProj_OrbitalStrike")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF("mSpawnFlightEffects", "Function TribesGame.TrProj_OrbitalStrike.SpawnFlightEffects")); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
