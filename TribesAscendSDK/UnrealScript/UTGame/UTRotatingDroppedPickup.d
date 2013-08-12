module UnrealScript.UTGame.UTRotatingDroppedPickup;

import ScriptClasses;
import UnrealScript.UTGame.UTDroppedPickup;

extern(C++) interface UTRotatingDroppedPickup : UTDroppedPickup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTRotatingDroppedPickup")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTick;
		public @property static final ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTRotatingDroppedPickup.Tick")); }
	}
	@property final auto ref float YawRotationRate() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
