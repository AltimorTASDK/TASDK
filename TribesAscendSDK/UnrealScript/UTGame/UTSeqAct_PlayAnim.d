module UnrealScript.UTGame.UTSeqAct_PlayAnim;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_PlayAnim : SequenceAction
{
	public @property final auto ref ScriptName AnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 232); }
	public @property final bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x1) != 0; }
	public @property final bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x1; } return val; }
}
