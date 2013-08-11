module UnrealScript.TribesGame.TrCallIn_Projectile;

import ScriptClasses;
import UnrealScript.TribesGame.TrCallIn;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface TrCallIn_Projectile : TrCallIn
{
public extern(D):
	@property final auto ref
	{
		Vector m_SavedTargetNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 588); }
		Vector m_SavedTargetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 576); }
		int m_FiredProjectiles() { return *cast(int*)(cast(size_t)cast(void*)this + 572); }
		ParticleSystem TargetParticleSystem() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 568); }
		SoundCue TargetParticleSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 564); }
		SoundCue AreaWarningSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 560); }
		int NumberOfProjectiles() { return *cast(int*)(cast(size_t)cast(void*)this + 556); }
		float FireTimeLength() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
		float CallRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
		ScriptClass ProjectileFireClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 544); }
	}
final:
	bool FireCompletedCallIn(int CallInOffs, Vector TargetLocation, Vector TargetNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = CallInOffs;
		*cast(Vector*)&params[4] = TargetLocation;
		*cast(Vector*)&params[16] = TargetNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74081], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void FireProjectile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74089], cast(void*)0, cast(void*)0);
	}
}
