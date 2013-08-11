module UnrealScript.TribesGame.AlienFXManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface AlienFXManager : UObject
{
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
	public @property final auto ref AlienFXManager.FXOverlay eLastOverlay() { return *cast(AlienFXManager.FXOverlay*)(cast(size_t)cast(void*)this + 141); }
	public @property final auto ref AlienFXManager.FXOverlay eCurrOverlay() { return *cast(AlienFXManager.FXOverlay*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float fIntervalCount() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float fInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref float fSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float fBoundsPct() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float fHighBounds() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float fLowBounds() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref int nTarget() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float fDamages() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float fObjectiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref float fDamageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	public @property final bool bBrighten() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x8) != 0; }
	public @property final bool bBrighten(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x8; } return val; }
	public @property final bool bMenuOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x4) != 0; }
	public @property final bool bMenuOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x4; } return val; }
	public @property final bool bLoaded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
	public @property final bool bLoaded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
	public @property final bool bShowFX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
	public @property final bool bShowFX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	public @property final auto ref int nHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int nTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	final void Init(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50990], params.ptr, cast(void*)0);
	}
	final void Close()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50992], cast(void*)0, cast(void*)0);
	}
	final void Queued()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50993], cast(void*)0, cast(void*)0);
	}
	final void Objective()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50994], cast(void*)0, cast(void*)0);
	}
	final void SwapWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50995], cast(void*)0, cast(void*)0);
	}
	final void CheckHealth()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50996], cast(void*)0, cast(void*)0);
	}
	final void menu(bool bOpen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bOpen;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50997], params.ptr, cast(void*)0);
	}
	final void Damage(AlienFXManager.FXArea Area)
	{
		ubyte params[1];
		params[] = 0;
		*cast(AlienFXManager.FXArea*)params.ptr = Area;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50999], params.ptr, cast(void*)0);
	}
	final void SetTeam(int TeamNum)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51001], params.ptr, cast(void*)0);
	}
	final void SetHealth(int Health)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Health;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51003], params.ptr, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51005], params.ptr, cast(void*)0);
	}
	final void Overlay(AlienFXManager.FXOverlay Type)
	{
		ubyte params[1];
		params[] = 0;
		*cast(AlienFXManager.FXOverlay*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51007], params.ptr, cast(void*)0);
	}
	final void DamageConvert(ScriptString Area)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Area;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51009], params.ptr, cast(void*)0);
	}
}
