module UnrealScript.UTGame.UTSeqCond_CheckWeapon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_CheckWeapon : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSeqCond_CheckWeapon")); }
	private static __gshared UTSeqCond_CheckWeapon mDefaultProperties;
	@property final static UTSeqCond_CheckWeapon DefaultProperties() { mixin(MGDPC("UTSeqCond_CheckWeapon", "UTSeqCond_CheckWeapon UTGame.Default__UTSeqCond_CheckWeapon")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF("mActivated", "Function UTGame.UTSeqCond_CheckWeapon.Activated")); }
	}
	@property final auto ref
	{
		ScriptClass TestForWeaponClass() { mixin(MGPC("ScriptClass", 212)); }
		Actor Target() { mixin(MGPC("Actor", 208)); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
