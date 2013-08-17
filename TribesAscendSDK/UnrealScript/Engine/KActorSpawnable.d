module UnrealScript.Engine.KActorSpawnable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.KActor;

extern(C++) interface KActorSpawnable : KActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.KActorSpawnable")()); }
	private static __gshared KActorSpawnable mDefaultProperties;
	@property final static KActorSpawnable DefaultProperties() { mixin(MGDPC!(KActorSpawnable, "KActorSpawnable Engine.Default__KActorSpawnable")()); }
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
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function Engine.KActorSpawnable.Initialize")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.KActorSpawnable.Recycle")()); }
			ScriptFunction RecycleInternal() { mixin(MGF!("mRecycleInternal", "Function Engine.KActorSpawnable.RecycleInternal")()); }
			ScriptFunction ResetComponents() { mixin(MGF!("mResetComponents", "Function Engine.KActorSpawnable.ResetComponents")()); }
		}
	}
	@property final
	{
		bool bScalingToZero() { mixin(MGBPC!(712, 0x2)()); }
		bool bScalingToZero(bool val) { mixin(MSBPC!(712, 0x2)()); }
		bool bRecycleScaleToZero() { mixin(MGBPC!(712, 0x1)()); }
		bool bRecycleScaleToZero(bool val) { mixin(MSBPC!(712, 0x1)()); }
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
