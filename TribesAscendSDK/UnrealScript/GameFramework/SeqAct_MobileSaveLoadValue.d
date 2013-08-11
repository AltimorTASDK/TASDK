module UnrealScript.GameFramework.SeqAct_MobileSaveLoadValue;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MobileSaveLoadValue : SequenceAction
{
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32942], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
