module UnrealScript.TribesGame.TrSeqAct_GiveCredits;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_GiveCredits : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSeqAct_GiveCredits")()); }
	private static __gshared TrSeqAct_GiveCredits mDefaultProperties;
	@property final static TrSeqAct_GiveCredits DefaultProperties() { mixin(MGDPC!(TrSeqAct_GiveCredits, "TrSeqAct_GiveCredits TribesGame.Default__TrSeqAct_GiveCredits")()); }
	@property final auto ref int Amount() { mixin(MGPC!("int", 232)()); }
}
