module UnrealScript.Engine.SeqAct_SetPhysics;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetPhysics : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetPhysics")()); }
	private static __gshared SeqAct_SetPhysics mDefaultProperties;
	@property final static SeqAct_SetPhysics DefaultProperties() { mixin(MGDPC!(SeqAct_SetPhysics, "SeqAct_SetPhysics Engine.Default__SeqAct_SetPhysics")()); }
	@property final auto ref Actor.EPhysics newPhysics() { mixin(MGPC!(Actor.EPhysics, 232)()); }
}
