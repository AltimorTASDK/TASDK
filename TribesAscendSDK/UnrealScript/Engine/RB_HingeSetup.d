module UnrealScript.Engine.RB_HingeSetup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface RB_HingeSetup : RB_ConstraintSetup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_HingeSetup")()); }
	private static __gshared RB_HingeSetup mDefaultProperties;
	@property final static RB_HingeSetup DefaultProperties() { mixin(MGDPC!(RB_HingeSetup, "RB_HingeSetup Engine.Default__RB_HingeSetup")()); }
}
