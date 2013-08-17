module UnrealScript.UTGame.UTSeqCond_IsUsingWeapon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_IsUsingWeapon : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqCond_IsUsingWeapon")()); }
	private static __gshared UTSeqCond_IsUsingWeapon mDefaultProperties;
	@property final static UTSeqCond_IsUsingWeapon DefaultProperties() { mixin(MGDPC!(UTSeqCond_IsUsingWeapon, "UTSeqCond_IsUsingWeapon UTGame.Default__UTSeqCond_IsUsingWeapon")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF!("mActivated", "Function UTGame.UTSeqCond_IsUsingWeapon.Activated")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptClass RequiredWeapon() { mixin(MGPC!(ScriptClass, 212)()); }
			Actor Target() { mixin(MGPC!(Actor, 208)()); }
		}
		bool bMustBeImpactHammer() { mixin(MGBPC!(216, 0x2)()); }
		bool bMustBeImpactHammer(bool val) { mixin(MSBPC!(216, 0x2)()); }
		bool bAllowSubclass() { mixin(MGBPC!(216, 0x1)()); }
		bool bAllowSubclass(bool val) { mixin(MSBPC!(216, 0x1)()); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
