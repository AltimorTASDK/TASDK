module UnrealScript.Engine.SeqAct_SetMaterial;

import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetMaterial : SequenceAction
{
	public @property final auto ref int MaterialIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref MaterialInterface NewMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 232); }
}
