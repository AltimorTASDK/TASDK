module UnrealScript.TribesGame.TrEmitCameraEffect_Rain;

import ScriptClasses;
import UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

extern(C++) interface TrEmitCameraEffect_Rain : TrEmitCameraEffect_Speed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEmitCameraEffect_Rain")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEmitCameraEffect_Rain.PostBeginPlay")); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
