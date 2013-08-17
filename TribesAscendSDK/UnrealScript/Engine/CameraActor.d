module UnrealScript.Engine.CameraActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.HUD;

extern(C++) interface CameraActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CameraActor")()); }
	private static __gshared CameraActor mDefaultProperties;
	@property final static CameraActor DefaultProperties() { mixin(MGDPC!(CameraActor, "CameraActor Engine.Default__CameraActor")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetCameraView;
			ScriptFunction mDisplayDebug;
		}
		public @property static final
		{
			ScriptFunction GetCameraView() { mixin(MGF!("mGetCameraView", "Function Engine.CameraActor.GetCameraView")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function Engine.CameraActor.DisplayDebug")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float AspectRatio() { mixin(MGPC!("float", 480)()); }
			float CamOverridePostProcessAlpha() { mixin(MGPC!("float", 488)()); }
			PostProcessVolume.PostProcessSettings CamOverridePostProcess() { mixin(MGPC!("PostProcessVolume.PostProcessSettings", 492)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'MeshComp'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DrawFrustum'!
			float FOVAngle() { mixin(MGPC!("float", 484)()); }
		}
		bool bConstrainAspectRatio() { mixin(MGBPC!(476, 0x1)()); }
		bool bConstrainAspectRatio(bool val) { mixin(MSBPC!(476, 0x1)()); }
		bool bCamOverridePostProcess() { mixin(MGBPC!(476, 0x2)()); }
		bool bCamOverridePostProcess(bool val) { mixin(MSBPC!(476, 0x2)()); }
	}
final:
	void GetCameraView(float DeltaTime, ref UObject.TPOV OutPOV)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(UObject.TPOV*)&params[4] = OutPOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCameraView, params.ptr, cast(void*)0);
		OutPOV = *cast(UObject.TPOV*)&params[4];
	}
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		out_YL = *cast(float*)&params[4];
		out_YPos = *cast(float*)&params[8];
	}
}
