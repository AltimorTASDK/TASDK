module UnrealScript.Engine.SceneCapturePortalActor;

import ScriptClasses;
import UnrealScript.Engine.SceneCaptureReflectActor;

extern(C++) interface SceneCapturePortalActor : SceneCaptureReflectActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SceneCapturePortalActor")); }
}
