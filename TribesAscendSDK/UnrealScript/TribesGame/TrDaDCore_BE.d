module UnrealScript.TribesGame.TrDaDCore_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrDaDCore;

extern(C++) interface TrDaDCore_BE : TrDaDCore
{
public extern(D):
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79624], cast(void*)0, cast(void*)0);
	}
}
