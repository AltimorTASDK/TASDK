module UnrealScript.Engine.SceneCapturePortalActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SceneCaptureReflectActor;

extern(C++) interface SceneCapturePortalActor : SceneCaptureReflectActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SceneCapturePortalActor")()); }
	private static __gshared SceneCapturePortalActor mDefaultProperties;
	@property final static SceneCapturePortalActor DefaultProperties() { mixin(MGDPC!(SceneCapturePortalActor, "SceneCapturePortalActor Engine.Default__SceneCapturePortalActor")()); }
}
