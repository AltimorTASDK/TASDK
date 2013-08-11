module UnrealScript.TribesGame.TrDevice_ChainGun;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_ChainGun : TrDevice_ConstantFire
{
public extern(D):
	@property final
	{
		auto ref
		{
			int r_BuffedMaxAmmo() { return *cast(int*)(cast(size_t)cast(void*)this + 2188); }
			TrSkelControl_SpinControl m_BarrelSpinControl() { return *cast(TrSkelControl_SpinControl*)(cast(size_t)cast(void*)this + 2184); }
			float m_fCurrSpinTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2176); }
			float m_fBuildupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2172); }
		}
		bool m_bHasClip() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2192) & 0x1) != 0; }
		bool m_bHasClip(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2192) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2192) &= ~0x1; } return val; }
	}
final:
	float GetBuildUpTime(PlayerReplicationInfo PRI, bool bForInterpSpeed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(bool*)&params[4] = bForInterpSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68259], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81138], params.ptr, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81140], params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81143], params.ptr, cast(void*)0);
	}
	void UpdateSoundModulation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81145], cast(void*)0, cast(void*)0);
	}
	void PlayBuildupAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81153], cast(void*)0, cast(void*)0);
	}
	void OnSwitchToWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81186], cast(void*)0, cast(void*)0);
	}
	void PlayWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81187], cast(void*)0, cast(void*)0);
	}
	void BuffMaxCarriedAmmo(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81188], params.ptr, cast(void*)0);
	}
	int AddCarriedAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81190], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetBasePickupAmmoAmount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81193], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
