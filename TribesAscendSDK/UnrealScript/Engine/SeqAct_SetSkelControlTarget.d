module UnrealScript.Engine.SeqAct_SetSkelControlTarget;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetSkelControlTarget : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_SetSkelControlTarget")); }
	private static __gshared SeqAct_SetSkelControlTarget mDefaultProperties;
	@property final static SeqAct_SetSkelControlTarget DefaultProperties() { mixin(MGDPC("SeqAct_SetSkelControlTarget", "SeqAct_SetSkelControlTarget Engine.Default__SeqAct_SetSkelControlTarget")); }
	@property final auto ref
	{
		ScriptArray!(UObject) TargetActors() { mixin(MGPC("ScriptArray!(UObject)", 240)); }
		ScriptName SkelControlName() { mixin(MGPC("ScriptName", 232)); }
	}
}
