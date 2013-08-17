module UnrealScript.Engine.SeqVar_Float;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Float : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqVar_Float")); }
	private static __gshared SeqVar_Float mDefaultProperties;
	@property final static SeqVar_Float DefaultProperties() { mixin(MGDPC("SeqVar_Float", "SeqVar_Float Engine.Default__SeqVar_Float")); }
	@property final auto ref float FloatValue() { mixin(MGPC("float", 148)); }
}
