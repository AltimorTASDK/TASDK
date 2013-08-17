module UnrealScript.TribesGame.TrProj_Twinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Twinfusor : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_Twinfusor")()); }
	private static __gshared TrProj_Twinfusor mDefaultProperties;
	@property final static TrProj_Twinfusor DefaultProperties() { mixin(MGDPC!(TrProj_Twinfusor, "TrProj_Twinfusor TribesGame.Default__TrProj_Twinfusor")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF!("mSpawnFlightEffects", "Function TribesGame.TrProj_Twinfusor.SpawnFlightEffects")()); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
