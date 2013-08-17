module UnrealScript.TribesGame.TrProj_LightTwinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_LightTwinfusor : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_LightTwinfusor")()); }
	private static __gshared TrProj_LightTwinfusor mDefaultProperties;
	@property final static TrProj_LightTwinfusor DefaultProperties() { mixin(MGDPC!(TrProj_LightTwinfusor, "TrProj_LightTwinfusor TribesGame.Default__TrProj_LightTwinfusor")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF!("mSpawnFlightEffects", "Function TribesGame.TrProj_LightTwinfusor.SpawnFlightEffects")()); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
