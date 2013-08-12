module UnrealScript.TribesGame.TrProj_Thumper;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Thumper : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_Thumper")); }
	private static __gshared TrProj_Thumper mDefaultProperties;
	@property final static TrProj_Thumper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_Thumper)("TrProj_Thumper TribesGame.Default__TrProj_Thumper")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDestroyed;
		public @property static final ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Thumper.Destroyed")); }
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
