module UnrealScript.TribesGame.TrProj_PlasmaCannon;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_PlasmaCannon : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_PlasmaCannon")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { return mSpawnFlightEffects ? mSpawnFlightEffects : (mSpawnFlightEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_PlasmaCannon.SpawnFlightEffects")); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
