module UnrealScript.UTGame.UTSeqAct_SpawnProjectile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_SpawnProjectile : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_SpawnProjectile")()); }
	private static __gshared UTSeqAct_SpawnProjectile mDefaultProperties;
	@property final static UTSeqAct_SpawnProjectile DefaultProperties() { mixin(MGDPC!(UTSeqAct_SpawnProjectile, "UTSeqAct_SpawnProjectile UTGame.Default__UTSeqAct_SpawnProjectile")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF!("mActivated", "Function UTGame.UTSeqAct_SpawnProjectile.Activated")()); }
	}
	@property final auto ref ScriptClass ProjectileClass() { mixin(MGPC!("ScriptClass", 232)()); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
