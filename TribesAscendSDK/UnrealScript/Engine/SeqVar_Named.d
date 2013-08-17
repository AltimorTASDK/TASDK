module UnrealScript.Engine.SeqVar_Named;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Named : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqVar_Named")); }
	private static __gshared SeqVar_Named mDefaultProperties;
	@property final static SeqVar_Named DefaultProperties() { mixin(MGDPC("SeqVar_Named", "SeqVar_Named Engine.Default__SeqVar_Named")); }
	@property final
	{
		auto ref
		{
			ScriptName FindVarName() { mixin(MGPC("ScriptName", 152)); }
			ScriptClass ExpectedType() { mixin(MGPC("ScriptClass", 148)); }
		}
		bool bStatusIsOk() { mixin(MGBPC(160, 0x1)); }
		bool bStatusIsOk(bool val) { mixin(MSBPC(160, 0x1)); }
	}
}
