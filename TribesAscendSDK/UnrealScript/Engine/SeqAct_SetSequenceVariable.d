module UnrealScript.Engine.SeqAct_SetSequenceVariable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetSequenceVariable : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_SetSequenceVariable")); }
	private static __gshared SeqAct_SetSequenceVariable mDefaultProperties;
	@property final static SeqAct_SetSequenceVariable DefaultProperties() { mixin(MGDPC("SeqAct_SetSequenceVariable", "SeqAct_SetSequenceVariable Engine.Default__SeqAct_SetSequenceVariable")); }
}
