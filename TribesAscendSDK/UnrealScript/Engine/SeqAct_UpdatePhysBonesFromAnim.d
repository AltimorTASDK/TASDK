module UnrealScript.Engine.SeqAct_UpdatePhysBonesFromAnim;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_UpdatePhysBonesFromAnim : SequenceAction
{
public extern(D):
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[26007], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
