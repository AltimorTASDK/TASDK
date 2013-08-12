module UnrealScript.TribesGame.TrSeqAct_GiveAccolade;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_GiveAccolade : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSeqAct_GiveAccolade")); }
	private static __gshared TrSeqAct_GiveAccolade mDefaultProperties;
	@property final static TrSeqAct_GiveAccolade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSeqAct_GiveAccolade)("TrSeqAct_GiveAccolade TribesGame.Default__TrSeqAct_GiveAccolade")); }
	@property final auto ref ScriptClass AccoladeType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 232); }
}
