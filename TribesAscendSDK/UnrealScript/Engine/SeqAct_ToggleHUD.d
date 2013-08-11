module UnrealScript.Engine.SeqAct_ToggleHUD;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ToggleHUD : SequenceAction
{
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25992], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
