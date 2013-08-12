module UnrealScript.Engine.SeqVar_Vector;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Vector : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_Vector")); }
	private static __gshared SeqVar_Vector mDefaultProperties;
	@property final static SeqVar_Vector DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqVar_Vector)("SeqVar_Vector Engine.Default__SeqVar_Vector")); }
	@property final auto ref Vector VectValue() { return *cast(Vector*)(cast(size_t)cast(void*)this + 148); }
}
