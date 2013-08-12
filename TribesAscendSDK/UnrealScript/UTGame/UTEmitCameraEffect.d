module UnrealScript.UTGame.UTEmitCameraEffect;

import ScriptClasses;
import UnrealScript.UDKBase.UDKEmitCameraEffect;

extern(C++) interface UTEmitCameraEffect : UDKEmitCameraEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTEmitCameraEffect")); }
}
