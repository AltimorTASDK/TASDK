module UnrealScript.UTGame.UTShockBallLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PointLightComponent;

extern(C++) interface UTShockBallLight : PointLightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTShockBallLight")()); }
	private static __gshared UTShockBallLight mDefaultProperties;
	@property final static UTShockBallLight DefaultProperties() { mixin(MGDPC!(UTShockBallLight, "UTShockBallLight UTGame.Default__UTShockBallLight")()); }
}
