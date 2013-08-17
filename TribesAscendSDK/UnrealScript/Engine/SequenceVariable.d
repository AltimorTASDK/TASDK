module UnrealScript.Engine.SequenceVariable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceObject;

extern(C++) interface SequenceVariable : SequenceObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SequenceVariable")()); }
	private static __gshared SequenceVariable mDefaultProperties;
	@property final static SequenceVariable DefaultProperties() { mixin(MGDPC!(SequenceVariable, "SequenceVariable Engine.Default__SequenceVariable")()); }
	@property final auto ref ScriptName VarName() { mixin(MGPC!("ScriptName", 140)()); }
}
