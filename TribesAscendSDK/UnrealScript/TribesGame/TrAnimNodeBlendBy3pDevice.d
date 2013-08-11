module UnrealScript.TribesGame.TrAnimNodeBlendBy3pDevice;

import ScriptClasses;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.GameFramework.GameSkelCtrl_Recoil;

extern(C++) interface TrAnimNodeBlendBy3pDevice : TrAnimNodeBlendList
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) m_nmRecoilControlNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 296); }
			ScriptArray!(GameSkelCtrl_Recoil) m_RecoilControls() { return *cast(ScriptArray!(GameSkelCtrl_Recoil)*)(cast(size_t)cast(void*)this + 308); }
			ScriptName m_StandardReloadAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 352); }
			ScriptName m_SkiingReloadName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 344); }
			ScriptName m_StandardFireAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 336); }
			ScriptName m_SkiingFireName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 328); }
			float m_fRefireTimePreview() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
			TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 292); }
		}
		bool m_bCurrentDeviceSupportsAltSkiReloadAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x10) != 0; }
		bool m_bCurrentDeviceSupportsAltSkiReloadAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x10; } return val; }
		bool m_bCurrentDeviceSupportsAltSkiFireAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x8) != 0; }
		bool m_bCurrentDeviceSupportsAltSkiFireAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x8; } return val; }
		bool m_bScalePutawayRetrieveAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x4) != 0; }
		bool m_bScalePutawayRetrieveAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x4; } return val; }
		bool m_bFirePreview() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x2) != 0; }
		bool m_bFirePreview(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x2; } return val; }
		bool m_bScaleFireByRefireTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x1) != 0; }
		bool m_bScaleFireByRefireTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x1; } return val; }
	}
final:
	void PlayIdle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66339], cast(void*)0, cast(void*)0);
	}
	void PlayBuildup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66340], cast(void*)0, cast(void*)0);
	}
	void PlayFire(float RefireTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = RefireTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66341], params.ptr, cast(void*)0);
	}
	void PlayPutaway(float PutAwayTime, float ForcedRateBuff)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = PutAwayTime;
		*cast(float*)&params[4] = ForcedRateBuff;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66343], params.ptr, cast(void*)0);
	}
	void PlayRetrieve(float RetrieveTime, float ForcedRateBuff)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = RetrieveTime;
		*cast(float*)&params[4] = ForcedRateBuff;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66346], params.ptr, cast(void*)0);
	}
	void PlayReload(float ReloadTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ReloadTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66349], params.ptr, cast(void*)0);
	}
	void PlayOffhand(ScriptName OffhandAnimName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = OffhandAnimName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66351], params.ptr, cast(void*)0);
	}
}
