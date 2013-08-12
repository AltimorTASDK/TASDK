module UnrealScript.Engine.SceneCaptureReflectActor;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SceneCaptureActor;

extern(C++) interface SceneCaptureReflectActor : SceneCaptureActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SceneCaptureReflectActor")); }
	private static __gshared SceneCaptureReflectActor mDefaultProperties;
	@property final static SceneCaptureReflectActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SceneCaptureReflectActor)("SceneCaptureReflectActor Engine.Default__SceneCaptureReflectActor")); }
	@property final auto ref MaterialInstanceConstant ReflectMaterialInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 484); }
}
