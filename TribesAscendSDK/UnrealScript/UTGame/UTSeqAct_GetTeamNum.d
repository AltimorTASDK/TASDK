module UnrealScript.UTGame.UTSeqAct_GetTeamNum;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_GetTeamNum : SequenceAction
{
public extern(D):
	@property final auto ref int TeamNum() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49104], cast(void*)0, cast(void*)0);
	}
}
