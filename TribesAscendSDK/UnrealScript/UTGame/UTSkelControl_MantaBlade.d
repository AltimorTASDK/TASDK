module UnrealScript.UTGame.UTSkelControl_MantaBlade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_PropellerBlade;

extern(C++) interface UTSkelControl_MantaBlade : UDKSkelControl_PropellerBlade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSkelControl_MantaBlade")()); }
	private static __gshared UTSkelControl_MantaBlade mDefaultProperties;
	@property final static UTSkelControl_MantaBlade DefaultProperties() { mixin(MGDPC!(UTSkelControl_MantaBlade, "UTSkelControl_MantaBlade UTGame.Default__UTSkelControl_MantaBlade")()); }
}
