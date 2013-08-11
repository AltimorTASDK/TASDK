module UnrealScript.TribesGame.TrEmitCameraEffect_Leaves;

import ScriptClasses;
import UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

extern(C++) interface TrEmitCameraEffect_Leaves : TrEmitCameraEffect_Speed
{
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87262], cast(void*)0, cast(void*)0);
	}
}
