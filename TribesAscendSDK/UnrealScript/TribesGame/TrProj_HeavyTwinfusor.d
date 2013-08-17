module UnrealScript.TribesGame.TrProj_HeavyTwinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_HeavyTwinfusor : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_HeavyTwinfusor")); }
	private static __gshared TrProj_HeavyTwinfusor mDefaultProperties;
	@property final static TrProj_HeavyTwinfusor DefaultProperties() { mixin(MGDPC("TrProj_HeavyTwinfusor", "TrProj_HeavyTwinfusor TribesGame.Default__TrProj_HeavyTwinfusor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF("mSpawnFlightEffects", "Function TribesGame.TrProj_HeavyTwinfusor.SpawnFlightEffects")); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
