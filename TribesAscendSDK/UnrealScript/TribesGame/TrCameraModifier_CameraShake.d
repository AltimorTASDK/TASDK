module UnrealScript.TribesGame.TrCameraModifier_CameraShake;

import ScriptClasses;
import UnrealScript.Engine.CameraModifier_CameraShake;

extern(C++) interface TrCameraModifier_CameraShake : CameraModifier_CameraShake
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCameraModifier_CameraShake")); }
}
