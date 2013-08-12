module UnrealScript.Engine.SceneCapture2DActor;

import ScriptClasses;
import UnrealScript.Engine.SceneCaptureActor;

extern(C++) interface SceneCapture2DActor : SceneCaptureActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SceneCapture2DActor")); }
	private static __gshared SceneCapture2DActor mDefaultProperties;
	@property final static SceneCapture2DActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SceneCapture2DActor)("SceneCapture2DActor Engine.Default__SceneCapture2DActor")); }
}
