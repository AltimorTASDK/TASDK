module UnrealScript.UTGame.UTSeqAct_ChangeTeam;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_ChangeTeam : SequenceAction
{
public extern(D):
	@property final auto ref ubyte NewTeamNum() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49075], cast(void*)0, cast(void*)0);
	}
}
