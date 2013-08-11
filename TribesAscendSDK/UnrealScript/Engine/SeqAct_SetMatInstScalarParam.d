module UnrealScript.Engine.SeqAct_SetMatInstScalarParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetMatInstScalarParam : SequenceAction
{
	public @property final auto ref float ScalarValue() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref MaterialInstanceConstant MatInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 232); }
}
