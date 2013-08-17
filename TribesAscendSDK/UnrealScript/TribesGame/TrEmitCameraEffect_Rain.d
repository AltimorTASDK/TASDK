module UnrealScript.TribesGame.TrEmitCameraEffect_Rain;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

extern(C++) interface TrEmitCameraEffect_Rain : TrEmitCameraEffect_Speed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrEmitCameraEffect_Rain")()); }
	private static __gshared TrEmitCameraEffect_Rain mDefaultProperties;
	@property final static TrEmitCameraEffect_Rain DefaultProperties() { mixin(MGDPC!(TrEmitCameraEffect_Rain, "TrEmitCameraEffect_Rain TribesGame.Default__TrEmitCameraEffect_Rain")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrEmitCameraEffect_Rain.PostBeginPlay")()); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
