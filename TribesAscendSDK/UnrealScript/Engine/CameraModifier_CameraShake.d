module UnrealScript.Engine.CameraModifier_CameraShake;

import ScriptClasses;
import UnrealScript.Engine.CameraModifier;
import UnrealScript.Engine.CameraAnimInst;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.CameraShake;

extern(C++) interface CameraModifier_CameraShake : CameraModifier
{
public extern(D):
	struct CameraShakeInstance
	{
		private ubyte __buffer__[144];
	public extern(D):
		@property final
		{
			auto ref
			{
				UObject.Matrix UserPlaySpaceMatrix() { return *cast(UObject.Matrix*)(cast(size_t)&this + 80); }
				Camera.ECameraAnimPlaySpace PlaySpace() { return *cast(Camera.ECameraAnimPlaySpace*)(cast(size_t)&this + 68); }
				CameraAnimInst AnimInst() { return *cast(CameraAnimInst*)(cast(size_t)&this + 64); }
				float Scale() { return *cast(float*)(cast(size_t)&this + 60); }
				float FOVSinOffset() { return *cast(float*)(cast(size_t)&this + 56); }
				Vector RotSinOffset() { return *cast(Vector*)(cast(size_t)&this + 44); }
				Vector LocSinOffset() { return *cast(Vector*)(cast(size_t)&this + 32); }
				float CurrentBlendOutTime() { return *cast(float*)(cast(size_t)&this + 28); }
				float CurrentBlendInTime() { return *cast(float*)(cast(size_t)&this + 20); }
				float OscillatorTimeRemaining() { return *cast(float*)(cast(size_t)&this + 12); }
				ScriptName SourceShakeName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
				CameraShake SourceShake() { return *cast(CameraShake*)(cast(size_t)&this + 0); }
			}
			bool bBlendingOut() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bBlendingOut(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
			bool bBlendingIn() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool bBlendingIn(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		ScriptArray!(CameraModifier_CameraShake.CameraShakeInstance) ActiveShakes() { return *cast(ScriptArray!(CameraModifier_CameraShake.CameraShakeInstance)*)(cast(size_t)cast(void*)this + 88); }
		float SplitScreenShakeScale() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	}
final:
	float InitializeOffset(CameraShake.FOscillator* Param)
	{
		ubyte params[16];
		params[] = 0;
		*cast(CameraShake.FOscillator*)params.ptr = *Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12278], params.ptr, cast(void*)0);
		*Param = *cast(CameraShake.FOscillator*)params.ptr;
		return *cast(float*)&params[12];
	}
	void ReinitShake(int ActiveShakeIdx, float Scale)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActiveShakeIdx;
		*cast(float*)&params[4] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12281], params.ptr, cast(void*)0);
	}
	CameraModifier_CameraShake.CameraShakeInstance InitializeShake(CameraShake NewShake, float Scale, Camera.ECameraAnimPlaySpace PlaySpace, Rotator UserPlaySpaceRot)
	{
		ubyte params[176];
		params[] = 0;
		*cast(CameraShake*)params.ptr = NewShake;
		*cast(float*)&params[4] = Scale;
		*cast(Camera.ECameraAnimPlaySpace*)&params[8] = PlaySpace;
		*cast(Rotator*)&params[12] = UserPlaySpaceRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12290], params.ptr, cast(void*)0);
		return *cast(CameraModifier_CameraShake.CameraShakeInstance*)&params[32];
	}
	void AddCameraShake(CameraShake NewShake, float Scale, Camera.ECameraAnimPlaySpace PlaySpace, Rotator UserPlaySpaceRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(CameraShake*)params.ptr = NewShake;
		*cast(float*)&params[4] = Scale;
		*cast(Camera.ECameraAnimPlaySpace*)&params[8] = PlaySpace;
		*cast(Rotator*)&params[12] = UserPlaySpaceRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12300], params.ptr, cast(void*)0);
	}
	void RemoveCameraShake(CameraShake Shake)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CameraShake*)params.ptr = Shake;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12307], params.ptr, cast(void*)0);
	}
	void RemoveAllCameraShakes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12311], cast(void*)0, cast(void*)0);
	}
	void UpdateCameraShake(float DeltaTime, CameraModifier_CameraShake.CameraShakeInstance* Shake, UObject.TPOV* OutPOV)
	{
		ubyte params[188];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(CameraModifier_CameraShake.CameraShakeInstance*)&params[16] = *Shake;
		*cast(UObject.TPOV*)&params[160] = *OutPOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12314], params.ptr, cast(void*)0);
		*Shake = *cast(CameraModifier_CameraShake.CameraShakeInstance*)&params[16];
		*OutPOV = *cast(UObject.TPOV*)&params[160];
	}
	bool ModifyCamera(Camera pCamera, float DeltaTime, UObject.TPOV* OutPOV)
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
