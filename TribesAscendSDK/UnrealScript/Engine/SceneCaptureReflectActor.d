module UnrealScript.Engine.SceneCaptureReflectActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SceneCaptureActor;

extern(C++) interface SceneCaptureReflectActor : SceneCaptureActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SceneCaptureReflectActor")); }
	private static __gshared SceneCaptureReflectActor mDefaultProperties;
	@property final static SceneCaptureReflectActor DefaultProperties() { mixin(MGDPC("SceneCaptureReflectActor", "SceneCaptureReflectActor Engine.Default__SceneCaptureReflectActor")); }
	@property final auto ref
	{
		MaterialInstanceConstant ReflectMaterialInst() { mixin(MGPC("MaterialInstanceConstant", 484)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'StaticMesh'!
	}
}
