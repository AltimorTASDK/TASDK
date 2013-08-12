module UnrealScript.TribesGame.TrSeqAct_GiveCredits;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_GiveCredits : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSeqAct_GiveCredits")); }
	private static __gshared TrSeqAct_GiveCredits mDefaultProperties;
	@property final static TrSeqAct_GiveCredits DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSeqAct_GiveCredits)("TrSeqAct_GiveCredits TribesGame.Default__TrSeqAct_GiveCredits")); }
	@property final auto ref int Amount() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
}
