module UnrealScript.Engine.SeqAct_SetMatInstTexParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.Engine.Texture;

extern(C++) interface SeqAct_SetMatInstTexParam : SequenceAction
{
public extern(D):
	@property final auto ref
	{
		ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 240); }
		Texture NewTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 236); }
		MaterialInstanceConstant MatInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 232); }
	}
}
