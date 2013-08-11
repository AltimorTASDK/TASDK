module UnrealScript.UTGame.UTSeqAct_SetVisibilityModifier;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_SetVisibilityModifier : SequenceAction
{
public extern(D):
	@property final auto ref float NewVisibilityModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49141], cast(void*)0, cast(void*)0);
	}
}
