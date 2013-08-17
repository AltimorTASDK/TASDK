module UnrealScript.Engine.SeqAct_GetProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetProperty : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_GetProperty")()); }
	private static __gshared SeqAct_GetProperty mDefaultProperties;
	@property final static SeqAct_GetProperty DefaultProperties() { mixin(MGDPC!(SeqAct_GetProperty, "SeqAct_GetProperty Engine.Default__SeqAct_GetProperty")()); }
	@property final auto ref ScriptName PropertyName() { mixin(MGPC!(ScriptName, 232)()); }
}
