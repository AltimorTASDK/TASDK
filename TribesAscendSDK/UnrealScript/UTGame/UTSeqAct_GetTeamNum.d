module UnrealScript.UTGame.UTSeqAct_GetTeamNum;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_GetTeamNum : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_GetTeamNum")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqAct_GetTeamNum.Activated")); }
	}
	@property final auto ref int TeamNum() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
