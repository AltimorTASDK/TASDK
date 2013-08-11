module UnrealScript.Engine.SeqAct_AddRemoveFaceFXAnimSet;

import ScriptClasses;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AddRemoveFaceFXAnimSet : SequenceAction
{
public extern(D):
	@property final auto ref ScriptArray!(FaceFXAnimSet) FaceFXAnimSets() { return *cast(ScriptArray!(FaceFXAnimSet)*)(cast(size_t)cast(void*)this + 232); }
}
