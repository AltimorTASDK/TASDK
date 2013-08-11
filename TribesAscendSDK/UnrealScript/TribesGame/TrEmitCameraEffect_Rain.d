module UnrealScript.TribesGame.TrEmitCameraEffect_Rain;

import ScriptClasses;
import UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

extern(C++) interface TrEmitCameraEffect_Rain : TrEmitCameraEffect_Speed
{
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87266], cast(void*)0, cast(void*)0);
	}
}
