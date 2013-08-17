module UnrealScript.Engine.Trigger_LOS;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Trigger;
import UnrealScript.Engine.PlayerController;

extern(C++) interface Trigger_LOS : Trigger
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Trigger_LOS")()); }
	private static __gshared Trigger_LOS mDefaultProperties;
	@property final static Trigger_LOS DefaultProperties() { mixin(MGDPC!(Trigger_LOS, "Trigger_LOS Engine.Default__Trigger_LOS")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTick;
		public @property static final ScriptFunction Tick() { mixin(MGF!("mTick", "Function Engine.Trigger_LOS.Tick")()); }
	}
	@property final auto ref ScriptArray!(PlayerController) PCsWithLOS() { mixin(MGPC!(ScriptArray!(PlayerController), 488)()); }
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
