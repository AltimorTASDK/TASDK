module UnrealScript.Engine.SequenceCondition;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceOp;

extern(C++) interface SequenceCondition : SequenceOp
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SequenceCondition")); }
	private static __gshared SequenceCondition mDefaultProperties;
	@property final static SequenceCondition DefaultProperties() { mixin(MGDPC("SequenceCondition", "SequenceCondition Engine.Default__SequenceCondition")); }
}
