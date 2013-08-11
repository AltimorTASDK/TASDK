module UnrealScript.TribesGame.TrSeqAct_PlayVGSCommand;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_PlayVGSCommand : SequenceAction
{
public extern(D):
	@property final auto ref
	{
		ScriptString CommandInstigatorName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
		TrVGSCommandList.VGSCommandType VGSCommand() { return *cast(TrVGSCommandList.VGSCommandType*)(cast(size_t)cast(void*)this + 232); }
	}
}
