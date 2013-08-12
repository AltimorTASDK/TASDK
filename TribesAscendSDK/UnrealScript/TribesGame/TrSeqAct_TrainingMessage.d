module UnrealScript.TribesGame.TrSeqAct_TrainingMessage;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.TribesGame.TrHelpTextManager_Training;

extern(C++) interface TrSeqAct_TrainingMessage : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSeqAct_TrainingMessage")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSeqAct_TrainingMessage.Activated")); }
	}
	@property final auto ref TrHelpTextManager_Training.EHelpTextTrainingType m_MessageType() { return *cast(TrHelpTextManager_Training.EHelpTextTrainingType*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
