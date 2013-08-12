module UnrealScript.Engine.SeqVar_Union;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Union : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_Union")); }
	private static __gshared SeqVar_Union mDefaultProperties;
	@property final static SeqVar_Union DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqVar_Union)("SeqVar_Union Engine.Default__SeqVar_Union")); }
}
