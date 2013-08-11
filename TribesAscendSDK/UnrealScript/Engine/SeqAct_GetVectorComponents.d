module UnrealScript.Engine.SeqAct_GetVectorComponents;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetVectorComponents : SequenceAction
{
	public @property final auto ref float Z() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float Y() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float X() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref Vector InVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 232); }
}
