module UnrealScript.TribesGame.TrVehicle_Tank;

import ScriptClasses;
import UnrealScript.Engine.CameraShake;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrVehicle_Tank : TrVehicle
{
public extern(D):
	@property final auto ref
	{
		float m_CameraShakeEffectiveRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 3244); }
		CameraShake m_FireCameraShake() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 3240); }
		ubyte GunnerFiringMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 3237); }
		ubyte GunnerFlashCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 3236); }
		Rotator GunnerWeaponRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3224); }
		Vector GunnerFlashLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 3212); }
	}
final:
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114712], params.ptr, cast(void*)0);
	}
	void VehicleWeaponFireEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114716], params.ptr, cast(void*)0);
	}
	void ProcessViewRotationBasedOnSeat(int SeatIndex, float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(float*)&params[4] = DeltaTime;
		*cast(Rotator*)&params[8] = *out_ViewRotation;
		*cast(Rotator*)&params[20] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114722], params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[8];
		*out_DeltaRot = *cast(Rotator*)&params[20];
	}
	Rotator LimitViewRotation(Rotator LimitViewRotation, float LimitViewPitchMin, float LimitViewPitchMax)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Rotator*)params.ptr = LimitViewRotation;
		*cast(float*)&params[12] = LimitViewPitchMin;
		*cast(float*)&params[16] = LimitViewPitchMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114732], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[20];
	}
}
