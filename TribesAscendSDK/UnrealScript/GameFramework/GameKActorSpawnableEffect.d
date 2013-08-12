module UnrealScript.GameFramework.GameKActorSpawnableEffect;

import ScriptClasses;
import UnrealScript.Engine.KActor;

extern(C++) interface GameKActorSpawnableEffect : KActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameKActorSpawnableEffect")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameKActorSpawnableEffect.PostBeginPlay")); }
			ScriptFunction FellOutOfWorld() { return mFellOutOfWorld ? mFellOutOfWorld : (mFellOutOfWorld = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameKActorSpawnableEffect.FellOutOfWorld")); }
			ScriptFunction StartScalingDown() { return mStartScalingDown ? mStartScalingDown : (mStartScalingDown = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameKActorSpawnableEffect.StartScalingDown")); }
		}
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
