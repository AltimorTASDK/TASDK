module UnrealScript.TribesGame.TrSeqAct_TrainingMessage;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.TribesGame.TrHelpTextManager_Training;

extern(C++) interface TrSeqAct_TrainingMessage : SequenceAction
{
public extern(D):
	@property final auto ref TrHelpTextManager_Training.EHelpTextTrainingType m_MessageType() { return *cast(TrHelpTextManager_Training.EHelpTextTrainingType*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110921], cast(void*)0, cast(void*)0);
	}
}
