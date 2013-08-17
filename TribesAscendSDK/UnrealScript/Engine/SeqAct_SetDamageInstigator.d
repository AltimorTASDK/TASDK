module UnrealScript.Engine.SeqAct_SetDamageInstigator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetDamageInstigator : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_SetDamageInstigator")); }
	private static __gshared SeqAct_SetDamageInstigator mDefaultProperties;
	@property final static SeqAct_SetDamageInstigator DefaultProperties() { mixin(MGDPC("SeqAct_SetDamageInstigator", "SeqAct_SetDamageInstigator Engine.Default__SeqAct_SetDamageInstigator")); }
	@property final auto ref Actor DamageInstigator() { mixin(MGPC("Actor", 232)); }
}
