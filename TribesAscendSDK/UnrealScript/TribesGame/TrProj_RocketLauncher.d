module UnrealScript.TribesGame.TrProj_RocketLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_RocketLauncher : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_RocketLauncher")); }
	private static __gshared TrProj_RocketLauncher mDefaultProperties;
	@property final static TrProj_RocketLauncher DefaultProperties() { mixin(MGDPC("TrProj_RocketLauncher", "TrProj_RocketLauncher TribesGame.Default__TrProj_RocketLauncher")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF("mSpawnFlightEffects", "Function TribesGame.TrProj_RocketLauncher.SpawnFlightEffects")); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
