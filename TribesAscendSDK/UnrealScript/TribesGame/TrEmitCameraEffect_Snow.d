module UnrealScript.TribesGame.TrEmitCameraEffect_Snow;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

extern(C++) interface TrEmitCameraEffect_Snow : TrEmitCameraEffect_Speed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrEmitCameraEffect_Snow")()); }
	private static __gshared TrEmitCameraEffect_Snow mDefaultProperties;
	@property final static TrEmitCameraEffect_Snow DefaultProperties() { mixin(MGDPC!(TrEmitCameraEffect_Snow, "TrEmitCameraEffect_Snow TribesGame.Default__TrEmitCameraEffect_Snow")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrEmitCameraEffect_Snow.PostBeginPlay")()); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
