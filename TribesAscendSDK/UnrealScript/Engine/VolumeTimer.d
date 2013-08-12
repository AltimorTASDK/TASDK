module UnrealScript.Engine.VolumeTimer;

import ScriptClasses;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.Info;

extern(C++) interface VolumeTimer : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.VolumeTimer")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mTimer;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.VolumeTimer.PostBeginPlay")); }
			ScriptFunction Timer() { return mTimer ? mTimer : (mTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.VolumeTimer.Timer")); }
		}
	}
	@property final auto ref PhysicsVolume V() { return *cast(PhysicsVolume*)(cast(size_t)cast(void*)this + 476); }
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
