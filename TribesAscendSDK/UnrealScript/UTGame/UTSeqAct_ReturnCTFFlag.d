module UnrealScript.UTGame.UTSeqAct_ReturnCTFFlag;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_ReturnCTFFlag : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_ReturnCTFFlag")); }
	private static __gshared UTSeqAct_ReturnCTFFlag mDefaultProperties;
	@property final static UTSeqAct_ReturnCTFFlag DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_ReturnCTFFlag)("UTSeqAct_ReturnCTFFlag UTGame.Default__UTSeqAct_ReturnCTFFlag")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqAct_ReturnCTFFlag.Activated")); }
	}
	@property final auto ref int TeamIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
