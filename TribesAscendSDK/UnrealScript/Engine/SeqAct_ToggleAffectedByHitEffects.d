module UnrealScript.Engine.SeqAct_ToggleAffectedByHitEffects;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ToggleAffectedByHitEffects : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_ToggleAffectedByHitEffects")); }
	private static __gshared SeqAct_ToggleAffectedByHitEffects mDefaultProperties;
	@property final static SeqAct_ToggleAffectedByHitEffects DefaultProperties() { mixin(MGDPC("SeqAct_ToggleAffectedByHitEffects", "SeqAct_ToggleAffectedByHitEffects Engine.Default__SeqAct_ToggleAffectedByHitEffects")); }
}
