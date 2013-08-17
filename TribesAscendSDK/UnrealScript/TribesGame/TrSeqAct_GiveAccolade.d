module UnrealScript.TribesGame.TrSeqAct_GiveAccolade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_GiveAccolade : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSeqAct_GiveAccolade")()); }
	private static __gshared TrSeqAct_GiveAccolade mDefaultProperties;
	@property final static TrSeqAct_GiveAccolade DefaultProperties() { mixin(MGDPC!(TrSeqAct_GiveAccolade, "TrSeqAct_GiveAccolade TribesGame.Default__TrSeqAct_GiveAccolade")()); }
	@property final auto ref ScriptClass AccoladeType() { mixin(MGPC!(ScriptClass, 232)()); }
}
