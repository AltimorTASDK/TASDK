module UnrealScript.Engine.CameraAnimInst;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.InterpTrackMove;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.InterpGroupInst;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpTrackInstMove;
import UnrealScript.Engine.CameraAnim;

extern(C++) interface CameraAnimInst : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CameraAnimInst")()); }
	private static __gshared CameraAnimInst mDefaultProperties;
	@property final static CameraAnimInst DefaultProperties() { mixin(MGDPC!(CameraAnimInst, "CameraAnimInst Engine.Default__CameraAnimInst")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetPlaySpace;
			ScriptFunction mPlay;
			ScriptFunction mUpdate;
			ScriptFunction mAdvanceAnim;
			ScriptFunction mStop;
			ScriptFunction mApplyTransientScaling;
		}
		public @property static final
		{
			ScriptFunction SetPlaySpace() { mixin(MGF!("mSetPlaySpace", "Function Engine.CameraAnimInst.SetPlaySpace")()); }
			ScriptFunction Play() { mixin(MGF!("mPlay", "Function Engine.CameraAnimInst.Play")()); }
			ScriptFunction Update() { mixin(MGF!("mUpdate", "Function Engine.CameraAnimInst.Update")()); }
			ScriptFunction AdvanceAnim() { mixin(MGF!("mAdvanceAnim", "Function Engine.CameraAnimInst.AdvanceAnim")()); }
			ScriptFunction Stop() { mixin(MGF!("mStop", "Function Engine.CameraAnimInst.Stop")()); }
			ScriptFunction ApplyTransientScaling() { mixin(MGF!("mApplyTransientScaling", "Function Engine.CameraAnimInst.ApplyTransientScaling")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector LastCameraLoc() { mixin(MGPC!(Vector, 416)()); }
			float LastPPSettingsAlpha() { mixin(MGPC!(float, 412)()); }
			PostProcessVolume.PostProcessSettings LastPPSettings() { mixin(MGPC!(PostProcessVolume.PostProcessSettings, 192)()); }
			UObject.Matrix UserPlaySpaceMatrix() { mixin(MGPC!(UObject.Matrix, 128)()); }
			Camera.ECameraAnimPlaySpace PlaySpace() { mixin(MGPC!(Camera.ECameraAnimPlaySpace, 124)()); }
			AnimNodeSequence SourceAnimNode() { mixin(MGPC!(AnimNodeSequence, 120)()); }
			InterpTrackInstMove MoveInst() { mixin(MGPC!(InterpTrackInstMove, 116)()); }
			InterpTrackMove MoveTrack() { mixin(MGPC!(InterpTrackMove, 112)()); }
			float RemainingTime() { mixin(MGPC!(float, 108)()); }
			float CurrentBlendWeight() { mixin(MGPC!(float, 104)()); }
			float TransientScaleModifier() { mixin(MGPC!(float, 100)()); }
			float BasePlayScale() { mixin(MGPC!(float, 96)()); }
			float PlayRate() { mixin(MGPC!(float, 92)()); }
			float CurBlendOutTime() { mixin(MGPC!(float, 88)()); }
			float CurBlendInTime() { mixin(MGPC!(float, 84)()); }
			float BlendOutTime() { mixin(MGPC!(float, 80)()); }
			float BlendInTime() { mixin(MGPC!(float, 76)()); }
			float CurTime() { mixin(MGPC!(float, 68)()); }
			// WARNING: Property 'InterpGroupInst' has the same name as a defined type!
			CameraAnim CamAnim() { mixin(MGPC!(CameraAnim, 60)()); }
		}
		bool bBlendingOut() { mixin(MGBPC!(72, 0x10)()); }
		bool bBlendingOut(bool val) { mixin(MSBPC!(72, 0x10)()); }
		bool bBlendingIn() { mixin(MGBPC!(72, 0x8)()); }
		bool bBlendingIn(bool val) { mixin(MSBPC!(72, 0x8)()); }
		bool bAutoReleaseWhenFinished() { mixin(MGBPC!(72, 0x4)()); }
		bool bAutoReleaseWhenFinished(bool val) { mixin(MSBPC!(72, 0x4)()); }
		bool bFinished() { mixin(MGBPC!(72, 0x2)()); }
		bool bFinished(bool val) { mixin(MSBPC!(72, 0x2)()); }
		bool bLooping() { mixin(MGBPC!(72, 0x1)()); }
		bool bLooping(bool val) { mixin(MSBPC!(72, 0x1)()); }
	}
final:
	void SetPlaySpace(Camera.ECameraAnimPlaySpace NewSpace, Rotator UserPlaySpace)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Camera.ECameraAnimPlaySpace*)params.ptr = NewSpace;
		*cast(Rotator*)&params[4] = UserPlaySpace;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlaySpace, params.ptr, cast(void*)0);
	}
	void Play(CameraAnim Anim, Actor CamActor, float InRate, float InScale, float InBlendInTime, float InBlendOutTime, bool bInLoop, bool bRandomStartTime, float Duration)
	{
		ubyte params[36];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = Anim;
		*cast(Actor*)&params[4] = CamActor;
		*cast(float*)&params[8] = InRate;
		*cast(float*)&params[12] = InScale;
		*cast(float*)&params[16] = InBlendInTime;
		*cast(float*)&params[20] = InBlendOutTime;
		*cast(bool*)&params[24] = bInLoop;
		*cast(bool*)&params[28] = bRandomStartTime;
		*cast(float*)&params[32] = Duration;
		(cast(ScriptObject)this).ProcessEvent(Functions.Play, params.ptr, cast(void*)0);
	}
	void Update(float NewRate, float NewScale, float NewBlendInTime, float NewBlendOutTime, float NewDuration)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = NewRate;
		*cast(float*)&params[4] = NewScale;
		*cast(float*)&params[8] = NewBlendInTime;
		*cast(float*)&params[12] = NewBlendOutTime;
		*cast(float*)&params[16] = NewDuration;
		(cast(ScriptObject)this).ProcessEvent(Functions.Update, params.ptr, cast(void*)0);
	}
	void AdvanceAnim(float DeltaTime, bool bJump)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(bool*)&params[4] = bJump;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdvanceAnim, params.ptr, cast(void*)0);
	}
	void Stop(bool bImmediate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bImmediate;
		(cast(ScriptObject)this).ProcessEvent(Functions.Stop, params.ptr, cast(void*)0);
	}
	void ApplyTransientScaling(float Scalar)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Scalar;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyTransientScaling, params.ptr, cast(void*)0);
	}
}
