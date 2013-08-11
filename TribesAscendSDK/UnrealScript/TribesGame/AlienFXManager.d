module UnrealScript.TribesGame.AlienFXManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface AlienFXManager : UObject
{
public extern(D):
	enum FXOverlay : ubyte
	{
		FXO_NONE = 0,
		FXO_RAGE = 1,
		FXO_REGEN = 2,
		FXO_DYING = 3,
		FXO_INVULN = 4,
		FXO_JAMMER = 5,
		FXO_SHIELD = 6,
		FXO_STEALTH = 7,
		FXO_MAX = 8,
	}
	enum FXArea : ubyte
	{
		FXA_ALL = 0,
		FXA_RIGHT = 1,
		FXA_LEFT = 2,
		FXA_UPPER = 3,
		FXA_LOWER = 4,
		FXA_FRONT = 5,
		FXA_REAR = 6,
		FXA_MAX = 7,
	}
	@property final
	{
		auto ref
		{
			AlienFXManager.FXOverlay eLastOverlay() { return *cast(AlienFXManager.FXOverlay*)(cast(size_t)cast(void*)this + 141); }
			AlienFXManager.FXOverlay eCurrOverlay() { return *cast(AlienFXManager.FXOverlay*)(cast(size_t)cast(void*)this + 140); }
			float fIntervalCount() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			float fInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			float fSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float fBoundsPct() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float fHighBounds() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float fLowBounds() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			int nTarget() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
			float fDamages() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float fObjectiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			float fDamageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			int nHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int nTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bBrighten() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x8) != 0; }
		bool bBrighten(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x8; } return val; }
		bool bMenuOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x4) != 0; }
		bool bMenuOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x4; } return val; }
		bool bLoaded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
		bool bLoaded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
		bool bShowFX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bShowFX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	}
final:
	void Init(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50990], params.ptr, cast(void*)0);
	}
	void Close()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50992], cast(void*)0, cast(void*)0);
	}
	void Queued()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50993], cast(void*)0, cast(void*)0);
	}
	void Objective()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50994], cast(void*)0, cast(void*)0);
	}
	void SwapWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50995], cast(void*)0, cast(void*)0);
	}
	void CheckHealth()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50996], cast(void*)0, cast(void*)0);
	}
	void menu(bool bOpen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bOpen;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50997], params.ptr, cast(void*)0);
	}
	void Damage(AlienFXManager.FXArea Area)
	{
		ubyte params[1];
		params[] = 0;
		*cast(AlienFXManager.FXArea*)params.ptr = Area;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50999], params.ptr, cast(void*)0);
	}
	void SetTeam(int TeamNum)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51001], params.ptr, cast(void*)0);
	}
	void SetHealth(int Health)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Health;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51003], params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51005], params.ptr, cast(void*)0);
	}
	void Overlay(AlienFXManager.FXOverlay Type)
	{
		ubyte params[1];
		params[] = 0;
		*cast(AlienFXManager.FXOverlay*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51007], params.ptr, cast(void*)0);
	}
	void DamageConvert(ScriptString Area)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Area;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51009], params.ptr, cast(void*)0);
	}
}
