module UnrealScript.Engine.KActorSpawnable;

import ScriptClasses;
import UnrealScript.Engine.KActor;

extern(C++) interface KActorSpawnable : KActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.KActorSpawnable")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mRecycle;
			ScriptFunction mRecycleInternal;
			ScriptFunction mResetComponents;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function Engine.KActorSpawnable.Initialize")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.KActorSpawnable.Recycle")); }
			ScriptFunction RecycleInternal() { return mRecycleInternal ? mRecycleInternal : (mRecycleInternal = ScriptObject.Find!(ScriptFunction)("Function Engine.KActorSpawnable.RecycleInternal")); }
			ScriptFunction ResetComponents() { return mResetComponents ? mResetComponents : (mResetComponents = ScriptObject.Find!(ScriptFunction)("Function Engine.KActorSpawnable.ResetComponents")); }
		}
	}
	@property final
	{
		bool bScalingToZero() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x2) != 0; }
		bool bScalingToZero(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x2; } return val; }
		bool bRecycleScaleToZero() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x1) != 0; }
		bool bRecycleScaleToZero(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
	void RecycleInternal()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RecycleInternal, cast(void*)0, cast(void*)0);
	}
	void ResetComponents()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetComponents, cast(void*)0, cast(void*)0);
	}
}
