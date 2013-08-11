module UnrealScript.TribesGame.TrEmitCameraEffect_Snow;

import ScriptClasses;
import UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

extern(C++) interface TrEmitCameraEffect_Snow : TrEmitCameraEffect_Speed
{
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87269], cast(void*)0, cast(void*)0);
	}
}
