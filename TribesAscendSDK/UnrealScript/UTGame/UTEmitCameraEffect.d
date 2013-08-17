module UnrealScript.UTGame.UTEmitCameraEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKEmitCameraEffect;

extern(C++) interface UTEmitCameraEffect : UDKEmitCameraEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTEmitCameraEffect")()); }
	private static __gshared UTEmitCameraEffect mDefaultProperties;
	@property final static UTEmitCameraEffect DefaultProperties() { mixin(MGDPC!(UTEmitCameraEffect, "UTEmitCameraEffect UTGame.Default__UTEmitCameraEffect")()); }
}
