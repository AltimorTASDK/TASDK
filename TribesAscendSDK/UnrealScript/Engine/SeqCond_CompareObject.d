module UnrealScript.Engine.SeqCond_CompareObject;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_CompareObject : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_CompareObject")); }
	private static __gshared SeqCond_CompareObject mDefaultProperties;
	@property final static SeqCond_CompareObject DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqCond_CompareObject)("SeqCond_CompareObject Engine.Default__SeqCond_CompareObject")); }
}
