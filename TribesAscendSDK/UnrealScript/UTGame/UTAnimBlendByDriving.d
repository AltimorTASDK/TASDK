module UnrealScript.UTGame.UTAnimBlendByDriving;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendByDriving;

extern(C++) interface UTAnimBlendByDriving : UDKAnimBlendByDriving
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTAnimBlendByDriving")()); }
	private static __gshared UTAnimBlendByDriving mDefaultProperties;
	@property final static UTAnimBlendByDriving DefaultProperties() { mixin(MGDPC!(UTAnimBlendByDriving, "UTAnimBlendByDriving UTGame.Default__UTAnimBlendByDriving")()); }
}
