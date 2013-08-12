module UnrealScript.Engine.Trigger_LOS;

import ScriptClasses;
import UnrealScript.Engine.Trigger;
import UnrealScript.Engine.PlayerController;

extern(C++) interface Trigger_LOS : Trigger
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Trigger_LOS")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTick;
		public @property static final ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function Engine.Trigger_LOS.Tick")); }
	}
	@property final auto ref ScriptArray!(PlayerController) PCsWithLOS() { return *cast(ScriptArray!(PlayerController)*)(cast(size_t)cast(void*)this + 488); }
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
