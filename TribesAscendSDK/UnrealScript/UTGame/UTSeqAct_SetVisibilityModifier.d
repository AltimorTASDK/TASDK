module UnrealScript.UTGame.UTSeqAct_SetVisibilityModifier;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_SetVisibilityModifier : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_SetVisibilityModifier")); }
	private static __gshared UTSeqAct_SetVisibilityModifier mDefaultProperties;
	@property final static UTSeqAct_SetVisibilityModifier DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_SetVisibilityModifier)("UTSeqAct_SetVisibilityModifier UTGame.Default__UTSeqAct_SetVisibilityModifier")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqAct_SetVisibilityModifier.Activated")); }
	}
	@property final auto ref float NewVisibilityModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
