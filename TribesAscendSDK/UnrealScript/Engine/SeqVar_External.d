module UnrealScript.Engine.SeqVar_External;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_External : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqVar_External")); }
	private static __gshared SeqVar_External mDefaultProperties;
	@property final static SeqVar_External DefaultProperties() { mixin(MGDPC("SeqVar_External", "SeqVar_External Engine.Default__SeqVar_External")); }
	@property final auto ref
	{
		ScriptString VariableLabel() { mixin(MGPC("ScriptString", 152)); }
		ScriptClass ExpectedType() { mixin(MGPC("ScriptClass", 148)); }
	}
}
