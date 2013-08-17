module UnrealScript.Engine.VolumeTimer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.Info;

extern(C++) interface VolumeTimer : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.VolumeTimer")()); }
	private static __gshared VolumeTimer mDefaultProperties;
	@property final static VolumeTimer DefaultProperties() { mixin(MGDPC!(VolumeTimer, "VolumeTimer Engine.Default__VolumeTimer")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mTimer;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.VolumeTimer.PostBeginPlay")()); }
			ScriptFunction Timer() { mixin(MGF!("mTimer", "Function Engine.VolumeTimer.Timer")()); }
		}
	}
	@property final auto ref PhysicsVolume V() { mixin(MGPC!("PhysicsVolume", 476)()); }
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
}
