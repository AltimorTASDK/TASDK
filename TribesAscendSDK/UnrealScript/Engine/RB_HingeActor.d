module UnrealScript.Engine.RB_HingeActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.RB_ConstraintActor;

extern(C++) interface RB_HingeActor : RB_ConstraintActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_HingeActor")()); }
	private static __gshared RB_HingeActor mDefaultProperties;
	@property final static RB_HingeActor DefaultProperties() { mixin(MGDPC!(RB_HingeActor, "RB_HingeActor Engine.Default__RB_HingeActor")()); }
}
