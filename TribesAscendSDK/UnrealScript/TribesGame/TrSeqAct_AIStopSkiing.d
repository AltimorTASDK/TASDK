module UnrealScript.TribesGame.TrSeqAct_AIStopSkiing;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_AIStopSkiing : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSeqAct_AIStopSkiing")); }
	private static __gshared TrSeqAct_AIStopSkiing mDefaultProperties;
	@property final static TrSeqAct_AIStopSkiing DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSeqAct_AIStopSkiing)("TrSeqAct_AIStopSkiing TribesGame.Default__TrSeqAct_AIStopSkiing")); }
}
