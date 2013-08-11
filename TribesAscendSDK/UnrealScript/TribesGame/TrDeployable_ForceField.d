module UnrealScript.TribesGame.TrDeployable_ForceField;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrDeployable;

extern(C++) interface TrDeployable_ForceField : TrDeployable
{
	public @property final auto ref float m_LightFlashBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 1564); }
	public @property final auto ref UObject.Color m_LightFlashColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1560); }
	public @property final auto ref float m_fOutHitOtherFlashRemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1552); }
	public @property final auto ref float m_fInHitOtherFlashRemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1548); }
	public @property final auto ref float m_fOutHitOtherFlashTimeLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1544); }
	public @property final auto ref float m_fInHitOtherFlashTimeLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
	public @property final auto ref float m_fOutTakeHitFlashRemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1536); }
	public @property final auto ref float m_fInTakeHitFlashRemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1532); }
	public @property final auto ref float m_fOutTakeHitFlashTimeLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1528); }
	public @property final auto ref float m_fInTakeHitFlashTimeLength() { return *cast(float*)(cast(size_t)cast(void*)this + 1524); }
	final void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80060], params.ptr, cast(void*)0);
	}
	final void OnHealthChanged(bool wasDamage)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = wasDamage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80066], params.ptr, cast(void*)0);
	}
	final void PlayDamageHealthEffects(int DamageAmount, int HitBoneIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(int*)&params[4] = HitBoneIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80068], params.ptr, cast(void*)0);
	}
	final void PlayHitOtherEffects(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80071], params.ptr, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80073], params.ptr, cast(void*)0);
	}
	final Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80076], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
