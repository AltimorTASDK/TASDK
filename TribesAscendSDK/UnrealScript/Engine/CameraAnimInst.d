module UnrealScript.Engine.CameraAnimInst;

import ScriptClasses;
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
	public @property final auto ref Vector LastCameraLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref float LastPPSettingsAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref PostProcessVolume.PostProcessSettings LastPPSettings() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref UObject.Matrix UserPlaySpaceMatrix() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref Camera.ECameraAnimPlaySpace PlaySpace() { return *cast(Camera.ECameraAnimPlaySpace*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref AnimNodeSequence SourceAnimNode() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref InterpTrackInstMove MoveInst() { return *cast(InterpTrackInstMove*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref InterpTrackMove MoveTrack() { return *cast(InterpTrackMove*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float RemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float CurrentBlendWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float TransientScaleModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float BasePlayScale() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float PlayRate() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float CurBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float CurBlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float BlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float BlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool bBlendingOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x10) != 0; }
	public @property final bool bBlendingOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x10; } return val; }
	public @property final bool bBlendingIn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x8) != 0; }
	public @property final bool bBlendingIn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x8; } return val; }
	public @property final bool bAutoReleaseWhenFinished() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
	public @property final bool bAutoReleaseWhenFinished(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
	public @property final bool bFinished() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
	public @property final bool bFinished(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
	public @property final bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	public @property final auto ref float CurTime() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	// WARNING: Property 'InterpGroupInst' has the same name as a defined type!
	public @property final auto ref CameraAnim CamAnim() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 60); }
	final void SetPlaySpace(Camera.ECameraAnimPlaySpace NewSpace, Rotator UserPlaySpace)
	{
		ubyte params[13];
		params[] = 0;
		*cast(Camera.ECameraAnimPlaySpace*)params.ptr = NewSpace;
		*cast(Rotator*)&params[4] = UserPlaySpace;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9499], params.ptr, cast(void*)0);
	}
	final void Play(CameraAnim Anim, Actor CamActor, float InRate, float InScale, float InBlendInTime, float InBlendOutTime, bool bInLoop, bool bRandomStartTime, float Duration)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12164], params.ptr, cast(void*)0);
	}
	final void Update(float NewRate, float NewScale, float NewBlendInTime, float NewBlendOutTime, float NewDuration)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = NewRate;
		*cast(float*)&params[4] = NewScale;
		*cast(float*)&params[8] = NewBlendInTime;
		*cast(float*)&params[12] = NewBlendOutTime;
		*cast(float*)&params[16] = NewDuration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12174], params.ptr, cast(void*)0);
	}
	final void AdvanceAnim(float DeltaTime, bool bJump)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(bool*)&params[4] = bJump;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12180], params.ptr, cast(void*)0);
	}
	final void Stop(bool bImmediate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bImmediate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12183], params.ptr, cast(void*)0);
	}
	final void ApplyTransientScaling(float Scalar)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Scalar;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12185], params.ptr, cast(void*)0);
	}
}
