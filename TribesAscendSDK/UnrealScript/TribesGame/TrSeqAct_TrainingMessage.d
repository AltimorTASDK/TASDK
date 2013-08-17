module UnrealScript.TribesGame.TrSeqAct_TrainingMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.TribesGame.TrHelpTextManager_Training;

extern(C++) interface TrSeqAct_TrainingMessage : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSeqAct_TrainingMessage")); }
	private static __gshared TrSeqAct_TrainingMessage mDefaultProperties;
	@property final static TrSeqAct_TrainingMessage DefaultProperties() { mixin(MGDPC("TrSeqAct_TrainingMessage", "TrSeqAct_TrainingMessage TribesGame.Default__TrSeqAct_TrainingMessage")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF("mActivated", "Function TribesGame.TrSeqAct_TrainingMessage.Activated")); }
	}
	@property final auto ref TrHelpTextManager_Training.EHelpTextTrainingType m_MessageType() { mixin(MGPC("TrHelpTextManager_Training.EHelpTextTrainingType", 232)); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
