module UnrealScript.TribesGame.TrProj_Lacerator;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProjectile;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface TrProj_Lacerator : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_Lacerator")); }
	private static __gshared TrProj_Lacerator mDefaultProperties;
	@property final static TrProj_Lacerator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_Lacerator)("TrProj_Lacerator TribesGame.Default__TrProj_Lacerator")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitProjectile;
			ScriptFunction mSpawnFlightEffects;
			ScriptFunction mInternalSpawnFlightEffects;
			ScriptFunction mGetDamage;
			ScriptFunction mGetMomentumTransfer;
			ScriptFunction mProcessTouch;
			ScriptFunction mLanded;
			ScriptFunction mSpawnImpactEffect;
			ScriptFunction mHitWall;
			ScriptFunction mStartToShrink;
			ScriptFunction mMyOnParticleSystemFinished;
		}
		public @property static final
		{
			ScriptFunction InitProjectile() { return mInitProjectile ? mInitProjectile : (mInitProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Lacerator.InitProjectile")); }
			ScriptFunction SpawnFlightEffects() { return mSpawnFlightEffects ? mSpawnFlightEffects : (mSpawnFlightEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Lacerator.SpawnFlightEffects")); }
			ScriptFunction InternalSpawnFlightEffects() { return mInternalSpawnFlightEffects ? mInternalSpawnFlightEffects : (mInternalSpawnFlightEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Lacerator.InternalSpawnFlightEffects")); }
			ScriptFunction GetDamage() { return mGetDamage ? mGetDamage : (mGetDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Lacerator.GetDamage")); }
			ScriptFunction GetMomentumTransfer() { return mGetMomentumTransfer ? mGetMomentumTransfer : (mGetMomentumTransfer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Lacerator.GetMomentumTransfer")); }
			ScriptFunction ProcessTouch() { return mProcessTouch ? mProcessTouch : (mProcessTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Lacerator.ProcessTouch")); }
			ScriptFunction Landed() { return mLanded ? mLanded : (mLanded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Lacerator.Landed")); }
			ScriptFunction SpawnImpactEffect() { return mSpawnImpactEffect ? mSpawnImpactEffect : (mSpawnImpactEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Lacerator.SpawnImpactEffect")); }
			ScriptFunction HitWall() { return mHitWall ? mHitWall : (mHitWall = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Lacerator.HitWall")); }
			ScriptFunction StartToShrink() { return mStartToShrink ? mStartToShrink : (mStartToShrink = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Lacerator.StartToShrink")); }
			ScriptFunction MyOnParticleSystemFinished() { return mMyOnParticleSystemFinished ? mMyOnParticleSystemFinished : (mMyOnParticleSystemFinished = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Lacerator.MyOnParticleSystemFinished")); }
		}
	}
	@property final
	{
		auto ref
		{
			CameraAnim ShortRangeKillAnim() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 860); }
			SoundCue HitPawnSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 852); }
			UDKPawn.MaterialSoundEffect DefaultHitSound() { return *cast(UDKPawn.MaterialSoundEffect*)(cast(size_t)cast(void*)this + 840); }
			ParticleSystem RockSmokeTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 832); }
			ParticleSystem BounceTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 828); }
			float ShrinkTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
			float DamageAttenuation() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
			int Bounces() { return *cast(int*)(cast(size_t)cast(void*)this + 816); }
		}
		bool bShrinking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 856) & 0x2) != 0; }
		bool bShrinking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 856) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 856) &= ~0x2; } return val; }
		bool bCheckShortRangeKill() { return (*cast(uint*)(cast(size_t)cast(void*)this + 856) & 0x1) != 0; }
		bool bCheckShortRangeKill(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 856) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 856) &= ~0x1; } return val; }
	}
final:
	void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitProjectile, params.ptr, cast(void*)0);
	}
	void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
	void InternalSpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InternalSpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
	float GetDamage(Actor Other, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDamage, params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	float GetMomentumTransfer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMomentumTransfer, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessTouch, params.ptr, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Landed, params.ptr, cast(void*)0);
	}
	bool SpawnImpactEffect(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnImpactEffect, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.HitWall, params.ptr, cast(void*)0);
	}
	void StartToShrink()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartToShrink, cast(void*)0, cast(void*)0);
	}
	void MyOnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.MyOnParticleSystemFinished, params.ptr, cast(void*)0);
	}
}
