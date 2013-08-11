module UnrealScript.Engine.SeqAct_SetMatInstVectorParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetMatInstVectorParam : SequenceAction
{
	public @property final auto ref UObject.LinearColor VectorValue() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref MaterialInstanceConstant MatInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 232); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25905], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
