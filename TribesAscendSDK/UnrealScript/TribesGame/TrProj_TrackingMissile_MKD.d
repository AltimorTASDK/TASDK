module UnrealScript.TribesGame.TrProj_TrackingMissile_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_TrackingMissile_MKD : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_TrackingMissile_MKD")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDestroyed;
		public @property static final ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_TrackingMissile_MKD.Destroyed")); }
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
