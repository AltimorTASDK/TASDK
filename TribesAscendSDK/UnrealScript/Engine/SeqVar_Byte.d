module UnrealScript.Engine.SeqVar_Byte;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Byte : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqVar_Byte")); }
	private static __gshared SeqVar_Byte mDefaultProperties;
	@property final static SeqVar_Byte DefaultProperties() { mixin(MGDPC("SeqVar_Byte", "SeqVar_Byte Engine.Default__SeqVar_Byte")); }
}
