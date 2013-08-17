module UnrealScript.UTGame.UTRotatingDroppedPickup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDroppedPickup;

extern(C++) interface UTRotatingDroppedPickup : UTDroppedPickup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTRotatingDroppedPickup")()); }
	private static __gshared UTRotatingDroppedPickup mDefaultProperties;
	@property final static UTRotatingDroppedPickup DefaultProperties() { mixin(MGDPC!(UTRotatingDroppedPickup, "UTRotatingDroppedPickup UTGame.Default__UTRotatingDroppedPickup")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTick;
		public @property static final ScriptFunction Tick() { mixin(MGF!("mTick", "Function UTGame.UTRotatingDroppedPickup.Tick")()); }
	}
	@property final auto ref float YawRotationRate() { mixin(MGPC!("float", 512)()); }
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
