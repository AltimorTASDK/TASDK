module UnrealScript.TribesGame.GFxTrReticules;

import ScriptClasses;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.Pawn;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.TribesGame.GfxTrHud;

extern(C++) interface GFxTrReticules : GFxObject
{
	public @property final auto ref int m_nCurrentReticuleIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
	public @property final bool m_bVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 156) & 0x1) != 0; }
	public @property final bool m_bVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 156) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 156) &= ~0x1; } return val; }
	public @property final auto ref float LastReticuleDepth() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float LastHitEnemyTime() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float LastAccuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref int LastCrossMode() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref Weapon LastWeapon() { return *cast(Weapon*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref GFxObject ActiveReticule() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref GFxObject ReticulesMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref WorldInfo ThisWorld() { return *cast(WorldInfo*)(cast(size_t)cast(void*)this + 124); }
	// WARNING: Property 'HUD' has the same name as a defined type!
	final void CallShowReticule(int nIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61567], params.ptr, cast(void*)0);
	}
	final void CallSetReticuleColor(int nType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61569], params.ptr, cast(void*)0);
	}
	final void ASC_SetCustomReticule(GFxObject Data)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61571], params.ptr, cast(void*)0);
	}
	final void CallSetReticuleDepth(float fDepth)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = fDepth;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61573], params.ptr, cast(void*)0);
	}
	final void ChangeReticule(int nIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61576], params.ptr, cast(void*)0);
	}
	final bool SetCustomReticule()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61578], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final int GetCurrentReticuleIndex()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61586], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void CallSetAccuracy(int nAccuracy)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nAccuracy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61588], params.ptr, cast(void*)0);
	}
	final void CallShowHit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61590], cast(void*)0, cast(void*)0);
	}
	final void DisableVehicleAmmoClip()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61591], cast(void*)0, cast(void*)0);
	}
	final void EnableVehicleAmmoClip()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61592], cast(void*)0, cast(void*)0);
	}
	final void SetVehicleAmmoClip(ScriptString AmmoCount)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = AmmoCount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61593], params.ptr, cast(void*)0);
	}
	final void SetPowerupPercentage(int pPercentage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = pPercentage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61595], params.ptr, cast(void*)0);
	}
	final void SetLaserPowerupPercentage(int pPercentage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = pPercentage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61597], params.ptr, cast(void*)0);
	}
	final void SetVehiclePowerupPercentage(int pPercentage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = pPercentage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61599], params.ptr, cast(void*)0);
	}
	final void SetGenericPowerupPercentage(int pPercentage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = pPercentage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61601], params.ptr, cast(void*)0);
	}
	final void Init(GfxTrHud H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GfxTrHud*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61603], params.ptr, cast(void*)0);
	}
	final void SetReticuleVisible(bool bNewVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61605], params.ptr, cast(void*)0);
	}
	final void UpdateReticule(Pawn pPawn, bool bForceUpdate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = pPawn;
		*cast(bool*)&params[4] = bForceUpdate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61607], params.ptr, cast(void*)0);
	}
}
