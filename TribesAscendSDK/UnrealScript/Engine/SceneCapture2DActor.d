module UnrealScript.Engine.SceneCapture2DActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SceneCaptureActor;

extern(C++) interface SceneCapture2DActor : SceneCaptureActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SceneCapture2DActor")()); }
	private static __gshared SceneCapture2DActor mDefaultProperties;
	@property final static SceneCapture2DActor DefaultProperties() { mixin(MGDPC!(SceneCapture2DActor, "SceneCapture2DActor Engine.Default__SceneCapture2DActor")()); }
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DrawFrustum'!
}
