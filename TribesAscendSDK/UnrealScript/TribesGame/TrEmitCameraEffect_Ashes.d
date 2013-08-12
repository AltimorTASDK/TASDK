module UnrealScript.TribesGame.TrEmitCameraEffect_Ashes;

import ScriptClasses;
import UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

extern(C++) interface TrEmitCameraEffect_Ashes : TrEmitCameraEffect_Speed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEmitCameraEffect_Ashes")); }
	private static __gshared TrEmitCameraEffect_Ashes mDefaultProperties;
	@property final static TrEmitCameraEffect_Ashes DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrEmitCameraEffect_Ashes)("TrEmitCameraEffect_Ashes TribesGame.Default__TrEmitCameraEffect_Ashes")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEmitCameraEffect_Ashes.PostBeginPlay")); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
