module UnrealScript.TribesGame.TrEmitCameraEffect_Ashes;

import ScriptClasses;
import UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

extern(C++) interface TrEmitCameraEffect_Ashes : TrEmitCameraEffect_Speed
{
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87258], cast(void*)0, cast(void*)0);
	}
}
