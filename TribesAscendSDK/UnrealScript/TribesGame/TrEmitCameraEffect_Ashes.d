module UnrealScript.TribesGame.TrEmitCameraEffect_Ashes;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

extern(C++) interface TrEmitCameraEffect_Ashes : TrEmitCameraEffect_Speed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrEmitCameraEffect_Ashes")()); }
	private static __gshared TrEmitCameraEffect_Ashes mDefaultProperties;
	@property final static TrEmitCameraEffect_Ashes DefaultProperties() { mixin(MGDPC!(TrEmitCameraEffect_Ashes, "TrEmitCameraEffect_Ashes TribesGame.Default__TrEmitCameraEffect_Ashes")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrEmitCameraEffect_Ashes.PostBeginPlay")()); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
