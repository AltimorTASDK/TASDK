module UnrealScript.Engine.AnimNotify_CameraEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_CameraEffect : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNotify_CameraEffect")()); }
	private static __gshared AnimNotify_CameraEffect mDefaultProperties;
	@property final static AnimNotify_CameraEffect DefaultProperties() { mixin(MGDPC!(AnimNotify_CameraEffect, "AnimNotify_CameraEffect Engine.Default__AnimNotify_CameraEffect")()); }
	@property final auto ref ScriptClass CameraLensEffect() { mixin(MGPC!("ScriptClass", 64)()); }
}
