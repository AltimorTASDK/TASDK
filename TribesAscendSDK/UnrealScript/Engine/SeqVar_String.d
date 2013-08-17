module UnrealScript.Engine.SeqVar_String;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_String : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqVar_String")); }
	private static __gshared SeqVar_String mDefaultProperties;
	@property final static SeqVar_String DefaultProperties() { mixin(MGDPC("SeqVar_String", "SeqVar_String Engine.Default__SeqVar_String")); }
	@property final auto ref ScriptString StrValue() { mixin(MGPC("ScriptString", 148)); }
}
