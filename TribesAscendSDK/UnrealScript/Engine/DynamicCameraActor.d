module UnrealScript.Engine.DynamicCameraActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CameraActor;

extern(C++) interface DynamicCameraActor : CameraActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DynamicCameraActor")); }
	private static __gshared DynamicCameraActor mDefaultProperties;
	@property final static DynamicCameraActor DefaultProperties() { mixin(MGDPC("DynamicCameraActor", "DynamicCameraActor Engine.Default__DynamicCameraActor")); }
}
