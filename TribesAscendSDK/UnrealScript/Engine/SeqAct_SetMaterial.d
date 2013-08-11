module UnrealScript.Engine.SeqAct_SetMaterial;

import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetMaterial : SequenceAction
{
public extern(D):
	@property final auto ref
	{
		int MaterialIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
		MaterialInterface NewMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 232); }
	}
}
