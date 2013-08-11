module UnrealScript.Engine.SeqAct_ApplySoundNode;

import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ApplySoundNode : SequenceAction
{
	public @property final auto ref SoundNode ApplyNode() { return *cast(SoundNode*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref SoundCue PlaySound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 232); }
}
