module UnrealScript.Engine.SeqVar_Byte;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Byte : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_Byte")); }
	private static __gshared SeqVar_Byte mDefaultProperties;
	@property final static SeqVar_Byte DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqVar_Byte)("SeqVar_Byte Engine.Default__SeqVar_Byte")); }
}
