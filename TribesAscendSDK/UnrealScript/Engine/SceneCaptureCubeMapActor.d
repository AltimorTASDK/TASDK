module UnrealScript.Engine.SceneCaptureCubeMapActor;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SceneCaptureActor;

extern(C++) interface SceneCaptureCubeMapActor : SceneCaptureActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SceneCaptureCubeMapActor")); }
	private static __gshared SceneCaptureCubeMapActor mDefaultProperties;
	@property final static SceneCaptureCubeMapActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SceneCaptureCubeMapActor)("SceneCaptureCubeMapActor Engine.Default__SceneCaptureCubeMapActor")); }
	@property final auto ref MaterialInstanceConstant CubeMaterialInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 484); }
}
