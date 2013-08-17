module UnrealScript.TribesGame.TrCameraModifier_CameraShake;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CameraModifier_CameraShake;

extern(C++) interface TrCameraModifier_CameraShake : CameraModifier_CameraShake
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCameraModifier_CameraShake")()); }
	private static __gshared TrCameraModifier_CameraShake mDefaultProperties;
	@property final static TrCameraModifier_CameraShake DefaultProperties() { mixin(MGDPC!(TrCameraModifier_CameraShake, "TrCameraModifier_CameraShake TribesGame.Default__TrCameraModifier_CameraShake")()); }
}
