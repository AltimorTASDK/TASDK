module UnrealScript.Engine.SeqVar_Name;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Name : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqVar_Name")()); }
	private static __gshared SeqVar_Name mDefaultProperties;
	@property final static SeqVar_Name DefaultProperties() { mixin(MGDPC!(SeqVar_Name, "SeqVar_Name Engine.Default__SeqVar_Name")()); }
}
