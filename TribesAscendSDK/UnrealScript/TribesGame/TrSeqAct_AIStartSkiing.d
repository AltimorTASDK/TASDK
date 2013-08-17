module UnrealScript.TribesGame.TrSeqAct_AIStartSkiing;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_AIStartSkiing : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSeqAct_AIStartSkiing")()); }
	private static __gshared TrSeqAct_AIStartSkiing mDefaultProperties;
	@property final static TrSeqAct_AIStartSkiing DefaultProperties() { mixin(MGDPC!(TrSeqAct_AIStartSkiing, "TrSeqAct_AIStartSkiing TribesGame.Default__TrSeqAct_AIStartSkiing")()); }
}
