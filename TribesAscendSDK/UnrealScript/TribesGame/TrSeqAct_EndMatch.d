module UnrealScript.TribesGame.TrSeqAct_EndMatch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_EndMatch : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSeqAct_EndMatch")); }
	private static __gshared TrSeqAct_EndMatch mDefaultProperties;
	@property final static TrSeqAct_EndMatch DefaultProperties() { mixin(MGDPC("TrSeqAct_EndMatch", "TrSeqAct_EndMatch TribesGame.Default__TrSeqAct_EndMatch")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF("mActivated", "Function TribesGame.TrSeqAct_EndMatch.Activated")); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
