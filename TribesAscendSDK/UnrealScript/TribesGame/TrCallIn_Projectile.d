module UnrealScript.TribesGame.TrCallIn_Projectile;

import ScriptClasses;
import UnrealScript.TribesGame.TrCallIn;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface TrCallIn_Projectile : TrCallIn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCallIn_Projectile")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFireCompletedCallIn;
			ScriptFunction mFireProjectile;
		}
		public @property static final
		{
			ScriptFunction FireCompletedCallIn() { return mFireCompletedCallIn ? mFireCompletedCallIn : (mFireCompletedCallIn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_Projectile.FireCompletedCallIn")); }
			ScriptFunction FireProjectile() { return mFireProjectile ? mFireProjectile : (mFireProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCallIn_Projectile.FireProjectile")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.FireCompletedCallIn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void FireProjectile()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireProjectile, cast(void*)0, cast(void*)0);
	}
}
