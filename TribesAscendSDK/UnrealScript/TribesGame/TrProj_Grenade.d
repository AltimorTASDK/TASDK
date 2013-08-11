module UnrealScript.TribesGame.TrProj_Grenade;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Grenade : TrProjectile
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(Pawn) m_PotentialTargets() { return *cast(ScriptArray!(Pawn)*)(cast(size_t)cast(void*)this + 872); }
			float m_fProxyDetonationHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 868); }
			float m_fProxyDetonationRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 864); }
			ScriptClass m_CollisionProxyClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 860); }
			TrCollisionProxy m_CollisionProxy() { return *cast(TrCollisionProxy*)(cast(size_t)cast(void*)this + 856); }
			float m_fStuckMomentumMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 852); }
			float m_fStuckDamageMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 848); }
			Vector m_OverloadHitNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 836); }
			SoundCue m_StuckOnPawnLoopingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 832); }
			ParticleSystem m_StuckOnTargetTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 828); }
			float m_fExplosionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
		}
		bool m_bStuckOnPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 816) & 0x1) != 0; }
		bool m_bStuckOnPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 816) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 816) &= ~0x1; } return val; }
		bool m_bSpawnProxyOnInit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 816) & 0x80) != 0; }
		bool m_bSpawnProxyOnInit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 816) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 816) &= ~0x80; } return val; }
		bool m_bScanProxyOnInit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 816) & 0x40) != 0; }
		bool m_bScanProxyOnInit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 816) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 816) &= ~0x40; } return val; }
		bool m_bFullyInheritVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 816) & 0x20) != 0; }
		bool m_bFullyInheritVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 816) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 816) &= ~0x20; } return val; }
		bool m_bDoRandSpin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 816) & 0x10) != 0; }
		bool m_bDoRandSpin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 816) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 816) &= ~0x10; } return val; }
		bool m_bBounceRequiredForExplode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 816) & 0x8) != 0; }
		bool m_bBounceRequiredForExplode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 816) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 816) &= ~0x8; } return val; }
		bool m_bExplodeOnTouchEvent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 816) & 0x4) != 0; }
		bool m_bExplodeOnTouchEvent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 816) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 816) &= ~0x4; } return val; }
		bool m_bTimedExplosion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 816) & 0x2) != 0; }
		bool m_bTimedExplosion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 816) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 816) &= ~0x2; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107823], cast(void*)0, cast(void*)0);
	}
	void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107824], params.ptr, cast(void*)0);
	}
	void SpawnCollisionProxy()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107828], cast(void*)0, cast(void*)0);
	}
	void DestroyCollisionProxy()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107829], cast(void*)0, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107830], cast(void*)0, cast(void*)0);
	}
	void ApplyInheritance(Vector ProjectileDir)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = ProjectileDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107831], params.ptr, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107834], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107835], params.ptr, cast(void*)0);
	}
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107839], params.ptr, cast(void*)0);
	}
	void PhysicsVolumeChange(PhysicsVolume NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107843], params.ptr, cast(void*)0);
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107845], params.ptr, cast(void*)0);
	}
	bool StickToTarget(Actor Target, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107848], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void PlayStuckOnEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107854], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107856], params.ptr, cast(void*)0);
	}
	void PawnEnteredDetonationArea(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107858], params.ptr, cast(void*)0);
	}
	void PawnLeftDetonationArea(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107860], params.ptr, cast(void*)0);
	}
	void NativeExplode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107862], params.ptr, cast(void*)0);
	}
}
