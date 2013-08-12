module UnrealScript.Engine.PotentialClimbWatcher;

import ScriptClasses;
import UnrealScript.Engine.Info;

extern(C++) interface PotentialClimbWatcher : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PotentialClimbWatcher")); }
	private static __gshared PotentialClimbWatcher mDefaultProperties;
	@property final static PotentialClimbWatcher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PotentialClimbWatcher)("PotentialClimbWatcher Engine.Default__PotentialClimbWatcher")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTick;
		public @property static final ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function Engine.PotentialClimbWatcher.Tick")); }
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
