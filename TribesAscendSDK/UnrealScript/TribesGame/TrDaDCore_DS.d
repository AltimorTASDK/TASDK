module UnrealScript.TribesGame.TrDaDCore_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrDaDCore;

extern(C++) interface TrDaDCore_DS : TrDaDCore
{
public extern(D):
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79639], cast(void*)0, cast(void*)0);
	}
}
