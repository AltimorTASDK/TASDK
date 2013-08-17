module UnrealScript.TribesGame.TrSeqAct_AIStopJetting;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_AIStopJetting : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSeqAct_AIStopJetting")()); }
	private static __gshared TrSeqAct_AIStopJetting mDefaultProperties;
	@property final static TrSeqAct_AIStopJetting DefaultProperties() { mixin(MGDPC!(TrSeqAct_AIStopJetting, "TrSeqAct_AIStopJetting TribesGame.Default__TrSeqAct_AIStopJetting")()); }
	@property final
	{
		bool m_bResetVelocity() { mixin(MGBPC!(232, 0x1)()); }
		bool m_bResetVelocity(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
}
