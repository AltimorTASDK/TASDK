module UnrealScript.TribesGame.TrEmitCameraEffect_Tutorial;

import ScriptClasses;
import UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

extern(C++) interface TrEmitCameraEffect_Tutorial : TrEmitCameraEffect_Speed
{
public extern(D):
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87273], cast(void*)0, cast(void*)0);
	}
}
