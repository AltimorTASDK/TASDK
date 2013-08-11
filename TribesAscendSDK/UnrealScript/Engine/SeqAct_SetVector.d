module UnrealScript.Engine.SeqAct_SetVector;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetVector : SeqAct_SetSequenceVariable
{
	public @property final auto ref Vector DefaultValue() { return *cast(Vector*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25937], cast(void*)0, cast(void*)0);
	}
}
