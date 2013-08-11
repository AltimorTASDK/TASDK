module UnrealScript.Engine.SeqAct_SetMatInstTexParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.Engine.Texture;

extern(C++) interface SeqAct_SetMatInstTexParam : SequenceAction
{
	public @property final auto ref ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref Texture NewTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref MaterialInstanceConstant MatInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 232); }
}
