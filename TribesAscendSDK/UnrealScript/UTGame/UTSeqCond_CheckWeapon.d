module UnrealScript.UTGame.UTSeqCond_CheckWeapon;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_CheckWeapon : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqCond_CheckWeapon")); }
	private static __gshared UTSeqCond_CheckWeapon mDefaultProperties;
	@property final static UTSeqCond_CheckWeapon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqCond_CheckWeapon)("UTSeqCond_CheckWeapon UTGame.Default__UTSeqCond_CheckWeapon")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqCond_CheckWeapon.Activated")); }
	}
	@property final auto ref
	{
		ScriptClass TestForWeaponClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 212); }
		Actor Target() { return *cast(Actor*)(cast(size_t)cast(void*)this + 208); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
