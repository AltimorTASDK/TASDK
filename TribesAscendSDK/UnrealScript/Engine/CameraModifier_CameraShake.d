module UnrealScript.Engine.CameraModifier_CameraShake;

import ScriptClasses;
import UnrealScript.Engine.CameraModifier;
import UnrealScript.Engine.CameraAnimInst;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.CameraShake;

extern(C++) interface CameraModifier_CameraShake : CameraModifier
{
	struct CameraShakeInstance
	{
		public @property final auto ref UObject.Matrix UserPlaySpaceMatrix() { return *cast(UObject.Matrix*)(cast(size_t)&this + 80); }
		private ubyte __UserPlaySpaceMatrix[64];
		public @property final auto ref Camera.ECameraAnimPlaySpace PlaySpace() { return *cast(Camera.ECameraAnimPlaySpace*)(cast(size_t)&this + 68); }
		private ubyte __PlaySpace[1];
		public @property final auto ref CameraAnimInst AnimInst() { return *cast(CameraAnimInst*)(cast(size_t)&this + 64); }
		private ubyte __AnimInst[4];
		public @property final auto ref float Scale() { return *cast(float*)(cast(size_t)&this + 60); }
		private ubyte __Scale[4];
		public @property final auto ref float FOVSinOffset() { return *cast(float*)(cast(size_t)&this + 56); }
		private ubyte __FOVSinOffset[4];
		public @property final auto ref Vector RotSinOffset() { return *cast(Vector*)(cast(size_t)&this + 44); }
		private ubyte __RotSinOffset[12];
		public @property final auto ref Vector LocSinOffset() { return *cast(Vector*)(cast(size_t)&this + 32); }
		private ubyte __LocSinOffset[12];
		public @property final auto ref float CurrentBlendOutTime() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __CurrentBlendOutTime[4];
		public @property final bool bBlendingOut() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bBlendingOut(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bBlendingOut[4];
		public @property final auto ref float CurrentBlendInTime() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __CurrentBlendInTime[4];
		public @property final bool bBlendingIn() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
		public @property final bool bBlendingIn(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		private ubyte __bBlendingIn[4];
		public @property final auto ref float OscillatorTimeRemaining() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __OscillatorTimeRemaining[4];
		public @property final auto ref ScriptName SourceShakeName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __SourceShakeName[8];
		public @property final auto ref CameraShake SourceShake() { return *cast(CameraShake*)(cast(size_t)&this + 0); }
		private ubyte __SourceShake[4];
	}
	public @property final auto ref ScriptArray!(CameraModifier_CameraShake.CameraShakeInstance) ActiveShakes() { return *cast(ScriptArray!(CameraModifier_CameraShake.CameraShakeInstance)*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float SplitScreenShakeScale() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	final float InitializeOffset(CameraShake.FOscillator* Param)
	{
		ubyte params[16];
		params[] = 0;
		*cast(CameraShake.FOscillator*)params.ptr = *Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12278], params.ptr, cast(void*)0);
		*Param = *cast(CameraShake.FOscillator*)params.ptr;
		return *cast(float*)&params[12];
	}
	final void ReinitShake(int ActiveShakeIdx, float Scale)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActiveShakeIdx;
		*cast(float*)&params[4] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12281], params.ptr, cast(void*)0);
	}
	final CameraModifier_CameraShake.CameraShakeInstance InitializeShake(CameraShake NewShake, float Scale, Camera.ECameraAnimPlaySpace PlaySpace, Rotator UserPlaySpaceRot)
	{
		ubyte params[165];
		params[] = 0;
		*cast(CameraShake*)params.ptr = NewShake;
		*cast(float*)&params[4] = Scale;
		*cast(Camera.ECameraAnimPlaySpace*)&params[8] = PlaySpace;
		*cast(Rotator*)&params[12] = UserPlaySpaceRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12290], params.ptr, cast(void*)0);
		return *cast(CameraModifier_CameraShake.CameraShakeInstance*)&params[32];
	}
	final void AddCameraShake(CameraShake NewShake, float Scale, Camera.ECameraAnimPlaySpace PlaySpace, Rotator UserPlaySpaceRot)
	{
		ubyte params[21];
		params[] = 0;
		*cast(CameraShake*)params.ptr = NewShake;
		*cast(float*)&params[4] = Scale;
		*cast(Camera.ECameraAnimPlaySpace*)&params[8] = PlaySpace;
		*cast(Rotator*)&params[12] = UserPlaySpaceRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12300], params.ptr, cast(void*)0);
	}
	final void RemoveCameraShake(CameraShake Shake)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CameraShake*)params.ptr = Shake;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12307], params.ptr, cast(void*)0);
	}
	final void RemoveAllCameraShakes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12311], cast(void*)0, cast(void*)0);
	}
	final void UpdateCameraShake(float DeltaTime, CameraModifier_CameraShake.CameraShakeInstance* Shake, UObject.TPOV* OutPOV)
	{
		ubyte params[176];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(CameraModifier_CameraShake.CameraShakeInstance*)&params[16] = *Shake;
		*cast(UObject.TPOV*)&params[160] = *OutPOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12314], params.ptr, cast(void*)0);
		*Shake = *cast(CameraModifier_CameraShake.CameraShakeInstance*)&params[16];
		*OutPOV = *cast(UObject.TPOV*)&params[160];
	}
	final bool ModifyCamera(Camera pCamera, float DeltaTime, UObject.TPOV* OutPOV)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Camera*)params.ptr = pCamera;
		*cast(float*)&params[4] = DeltaTime;
		*cast(UObject.TPOV*)&params[8] = *OutPOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12318], params.ptr, cast(void*)0);
		*OutPOV = *cast(UObject.TPOV*)&params[8];
		return *cast(bool*)&params[36];
	}
}
