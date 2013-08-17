module UnrealScript.TribesGame.TrEmitCameraEffect_Leaves;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

extern(C++) interface TrEmitCameraEffect_Leaves : TrEmitCameraEffect_Speed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrEmitCameraEffect_Leaves")()); }
	private static __gshared TrEmitCameraEffect_Leaves mDefaultProperties;
	@property final static TrEmitCameraEffect_Leaves DefaultProperties() { mixin(MGDPC!(TrEmitCameraEffect_Leaves, "TrEmitCameraEffect_Leaves TribesGame.Default__TrEmitCameraEffect_Leaves")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrEmitCameraEffect_Leaves.PostBeginPlay")()); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
