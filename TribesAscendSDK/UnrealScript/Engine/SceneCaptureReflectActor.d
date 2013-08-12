module UnrealScript.Engine.SceneCaptureReflectActor;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SceneCaptureActor;

extern(C++) interface SceneCaptureReflectActor : SceneCaptureActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SceneCaptureReflectActor")); }
	@property final auto ref MaterialInstanceConstant ReflectMaterialInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 484); }
}
