module UnrealScript.UTGame.UTSeqAct_ChangeTeam;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_ChangeTeam : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_ChangeTeam")); }
	private static __gshared UTSeqAct_ChangeTeam mDefaultProperties;
	@property final static UTSeqAct_ChangeTeam DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_ChangeTeam)("UTSeqAct_ChangeTeam UTGame.Default__UTSeqAct_ChangeTeam")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqAct_ChangeTeam.Activated")); }
	}
	@property final auto ref ubyte NewTeamNum() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
