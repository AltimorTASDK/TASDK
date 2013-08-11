module UnrealScript.TribesGame.TrDevice_ThrowingKnives;

import ScriptClasses;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_ThrowingKnives : TrDevice
{
	public @property final auto ref SkelControlSingleBone m_KnifeVisibilityBottomControl() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 2152); }
	public @property final auto ref SkelControlSingleBone m_KnifeVisibilityTopControl() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 2148); }
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86337], params.ptr, cast(void*)0);
	}
	final void UpdateSkelControlKnives(bool bForceFullAmmo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceFullAmmo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86339], params.ptr, cast(void*)0);
	}
	final void OnFireSkelControlKnivesAnimNotify()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86341], cast(void*)0, cast(void*)0);
	}
	final void OnSkelControlKnivesAnimNotify()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86342], cast(void*)0, cast(void*)0);
	}
	final void PlayWeaponEquip()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86343], cast(void*)0, cast(void*)0);
	}
	final Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86344], params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
	final void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86347], cast(void*)0, cast(void*)0);
	}
	final void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[86348], params.ptr, cast(void*)0);
	}
}
