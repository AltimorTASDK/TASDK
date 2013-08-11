module UnrealScript.Engine.SeqAct_SetMatInstScalarParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetMatInstScalarParam : SequenceAction
{
public extern(D):
	@property final auto ref
	{
		float ScalarValue() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 236); }
		MaterialInstanceConstant MatInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 232); }
	}
}
