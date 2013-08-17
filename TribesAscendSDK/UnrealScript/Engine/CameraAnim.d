module UnrealScript.Engine.CameraAnim;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface CameraAnim : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.CameraAnim")); }
	private static __gshared CameraAnim mDefaultProperties;
	@property final static CameraAnim DefaultProperties() { mixin(MGDPC("CameraAnim", "CameraAnim Engine.Default__CameraAnim")); }
	@property final auto ref
	{
		float BaseFOV() { mixin(MGPC("float", 320)); }
		float BasePPSettingsAlpha() { mixin(MGPC("float", 316)); }
		PostProcessVolume.PostProcessSettings BasePPSettings() { mixin(MGPC("PostProcessVolume.PostProcessSettings", 96)); }
		UObject.Box BoundingBox() { mixin(MGPC("UObject.Box", 68)); }
		float AnimLength() { mixin(MGPC("float", 64)); }
		InterpGroup CameraInterpGroup() { mixin(MGPC("InterpGroup", 60)); }
	}
}
