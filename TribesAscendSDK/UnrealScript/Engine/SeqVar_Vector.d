module UnrealScript.Engine.SeqVar_Vector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Vector : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqVar_Vector")()); }
	private static __gshared SeqVar_Vector mDefaultProperties;
	@property final static SeqVar_Vector DefaultProperties() { mixin(MGDPC!(SeqVar_Vector, "SeqVar_Vector Engine.Default__SeqVar_Vector")()); }
	@property final auto ref Vector VectValue() { mixin(MGPC!("Vector", 148)()); }
}
