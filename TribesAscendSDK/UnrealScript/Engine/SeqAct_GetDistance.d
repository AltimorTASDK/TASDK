module UnrealScript.Engine.SeqAct_GetDistance;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetDistance : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_GetDistance")); }
	private static __gshared SeqAct_GetDistance mDefaultProperties;
	@property final static SeqAct_GetDistance DefaultProperties() { mixin(MGDPC("SeqAct_GetDistance", "SeqAct_GetDistance Engine.Default__SeqAct_GetDistance")); }
	@property final auto ref float Distance() { mixin(MGPC("float", 232)); }
}
