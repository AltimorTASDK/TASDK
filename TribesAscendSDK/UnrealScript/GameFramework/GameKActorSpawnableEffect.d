module UnrealScript.GameFramework.GameKActorSpawnableEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.KActor;

extern(C++) interface GameKActorSpawnableEffect : KActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameKActorSpawnableEffect")); }
	private static __gshared GameKActorSpawnableEffect mDefaultProperties;
	@property final static GameKActorSpawnableEffect DefaultProperties() { mixin(MGDPC("GameKActorSpawnableEffect", "GameKActorSpawnableEffect GameFramework.Default__GameKActorSpawnableEffect")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mStartScalingDown;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function GameFramework.GameKActorSpawnableEffect.PostBeginPlay")); }
			ScriptFunction FellOutOfWorld() { mixin(MGF("mFellOutOfWorld", "Function GameFramework.GameKActorSpawnableEffect.FellOutOfWorld")); }
			ScriptFunction StartScalingDown() { mixin(MGF("mStartScalingDown", "Function GameFramework.GameKActorSpawnableEffect.StartScalingDown")); }
		}
	}
	static struct ScalingDown
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State GameFramework.GameKActorSpawnableEffect.ScalingDown")); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
	void StartScalingDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartScalingDown, cast(void*)0, cast(void*)0);
	}
}
