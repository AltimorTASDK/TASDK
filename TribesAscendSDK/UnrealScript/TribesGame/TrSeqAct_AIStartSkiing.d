module UnrealScript.TribesGame.TrSeqAct_AIStartSkiing;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_AIStartSkiing : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSeqAct_AIStartSkiing")); }
	private static __gshared TrSeqAct_AIStartSkiing mDefaultProperties;
	@property final static TrSeqAct_AIStartSkiing DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSeqAct_AIStartSkiing)("TrSeqAct_AIStartSkiing TribesGame.Default__TrSeqAct_AIStartSkiing")); }
}
