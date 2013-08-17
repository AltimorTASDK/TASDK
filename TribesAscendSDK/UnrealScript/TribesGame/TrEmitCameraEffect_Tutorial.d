module UnrealScript.TribesGame.TrEmitCameraEffect_Tutorial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

extern(C++) interface TrEmitCameraEffect_Tutorial : TrEmitCameraEffect_Speed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrEmitCameraEffect_Tutorial")()); }
	private static __gshared TrEmitCameraEffect_Tutorial mDefaultProperties;
	@property final static TrEmitCameraEffect_Tutorial DefaultProperties() { mixin(MGDPC!(TrEmitCameraEffect_Tutorial, "TrEmitCameraEffect_Tutorial TribesGame.Default__TrEmitCameraEffect_Tutorial")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrEmitCameraEffect_Tutorial.PostBeginPlay")()); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
