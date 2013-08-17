module UnrealScript.TribesGame.TrProj_HeavySpinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_HeavySpinfusor : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_HeavySpinfusor")); }
	private static __gshared TrProj_HeavySpinfusor mDefaultProperties;
	@property final static TrProj_HeavySpinfusor DefaultProperties() { mixin(MGDPC("TrProj_HeavySpinfusor", "TrProj_HeavySpinfusor TribesGame.Default__TrProj_HeavySpinfusor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF("mSpawnFlightEffects", "Function TribesGame.TrProj_HeavySpinfusor.SpawnFlightEffects")); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
