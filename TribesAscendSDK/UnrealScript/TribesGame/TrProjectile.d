module UnrealScript.TribesGame.TrProjectile;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTProjectile;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrProjectile : UTProjectile
{
	public @property final bool m_bTether() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x40) != 0; }
	public @property final bool m_bTether(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x40; } return val; }
	public @property final bool m_bSimulateAutonomousProjectiles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x80) != 0; }
	public @property final bool m_bSimulateAutonomousProjectiles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x80; } return val; }
	public @property final auto ref TrObject.TR_EQUIP_POINT m_SpawnedEquipPoint() { return *cast(TrObject.TR_EQUIP_POINT*)(cast(size_t)cast(void*)this + 756); }
	public @property final auto ref int r_nTetherId() { return *cast(int*)(cast(size_t)cast(void*)this + 736); }
	public @property final bool m_bIsBullet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x100) != 0; }
	public @property final bool m_bIsBullet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x100; } return val; }
	public @property final auto ref Vector r_vSpawnLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 776); }
	public @property final auto ref float m_fInstigatorExtraZMomentum() { return *cast(float*)(cast(size_t)cast(void*)this + 732); }
	public @property final auto ref ScriptArray!(UDKPawn.MaterialImpactEffect) ImpactEffects() { return *cast(ScriptArray!(UDKPawn.MaterialImpactEffect)*)(cast(size_t)cast(void*)this + 788); }
	public @property final auto ref TrDevice SpawnedFromDevice() { return *cast(TrDevice*)(cast(size_t)cast(void*)this + 812); }
	public @property final auto ref float m_fAlwaysRelevantDistanceSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 808); }
	public @property final auto ref float m_fMinLifespan() { return *cast(float*)(cast(size_t)cast(void*)this + 804); }
	public @property final auto ref float m_fMaxLifespan() { return *cast(float*)(cast(size_t)cast(void*)this + 800); }
	public @property final auto ref Vector m_vAccelDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 764); }
	public @property final auto ref float m_fClientSimulatedSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 760); }
	public @property final auto ref float m_fTweenSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 752); }
	public @property final auto ref float m_fCurrentTetherTweenAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 748); }
	public @property final auto ref TrProjectile c_ChildTetheredProjectile() { return *cast(TrProjectile*)(cast(size_t)cast(void*)this + 744); }
	public @property final auto ref TrProjectile c_ParentTetheredProjectile() { return *cast(TrProjectile*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref float m_fInstigatorMomentumTransferMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref float m_fAmbientSoundFadeOut() { return *cast(float*)(cast(size_t)cast(void*)this + 724); }
	public @property final auto ref float m_fAmbientSoundFadeIn() { return *cast(float*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref float m_fDirectHitMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref float m_fBounceDampingPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref int m_nPerPlayerMaxDeployed() { return *cast(int*)(cast(size_t)cast(void*)this + 708); }
	public @property final auto ref float m_fMaxProjInheritPct() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref float m_fProjInheritVelocityPctZ() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref float m_fProjInheritVelocityPct() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref float m_fXYDamageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
	public @property final bool m_bAuthoritativeExploding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x20) != 0; }
	public @property final bool m_bAuthoritativeExploding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x20; } return val; }
	public @property final bool m_bOrientToWall() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x10) != 0; }
	public @property final bool m_bOrientToWall(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x10; } return val; }
	public @property final bool m_bHasBounced() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x8) != 0; }
	public @property final bool m_bHasBounced(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x8; } return val; }
	public @property final bool m_bFastProjectile() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x4) != 0; }
	public @property final bool m_bFastProjectile(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x4; } return val; }
	public @property final bool m_bDebugProjectileRadius() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x2) != 0; }
	public @property final bool m_bDebugProjectileRadius(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x2; } return val; }
	public @property final bool m_bLimitXYDamageCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x1) != 0; }
	public @property final bool m_bLimitXYDamageCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x1; } return val; }
	public @property final auto ref ScriptClass m_SpawnedDeployableClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 680); }
	final bool IsBlockedByBlocker(Actor DamageInstigator, Actor Target, Actor OriginActor, bool CheckWorldGeometry, Vector AltOriginLocation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = DamageInstigator;
		*cast(Actor*)&params[4] = Target;
		*cast(Actor*)&params[8] = OriginActor;
		*cast(bool*)&params[12] = CheckWorldGeometry;
		*cast(Vector*)&params[16] = AltOriginLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[71790], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final void OrientToSlope(Vector HitNormal)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107650], params.ptr, cast(void*)0);
	}
	final Vector CalculateHitLocation(Actor shooter, Vector ShotDirection, Vector ShotLocation, float ClampedMaxSpeed)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Actor*)params.ptr = shooter;
		*cast(Vector*)&params[4] = ShotDirection;
		*cast(Vector*)&params[16] = ShotLocation;
		*cast(float*)&params[28] = ClampedMaxSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107652], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[32];
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107658], params.ptr, cast(void*)0);
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107660], cast(void*)0, cast(void*)0);
	}
	final void ExplodeFromTimeLimit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107662], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107663], cast(void*)0, cast(void*)0);
	}
	final void ClientReceivedProjectileToTether()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107667], cast(void*)0, cast(void*)0);
	}
	final void CreateProjectileLight()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107673], cast(void*)0, cast(void*)0);
	}
	final void DetonateObsolete(bool bDetonateFromAOE)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDetonateFromAOE;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107674], params.ptr, cast(void*)0);
	}
	final void DestroyOldestOverLimit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107676], cast(void*)0, cast(void*)0);
	}
	final int GetMaxDeployedLimit()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107683], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void Init(Vector Direction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107689], params.ptr, cast(void*)0);
	}
	final void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107691], params.ptr, cast(void*)0);
	}
	final void ApplyInheritance(Vector ProjectileDir)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = ProjectileDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107694], params.ptr, cast(void*)0);
	}
	final void ClientCheckFastSpawnExplode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107698], cast(void*)0, cast(void*)0);
	}
	final void SpawnExplosionEffects(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107702], params.ptr, cast(void*)0);
	}
	final SoundCue GetExplosionSound(PhysicalMaterial HitMaterial, Actor HitActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = HitMaterial;
		*cast(Actor*)&params[4] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107716], params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[8];
	}
	final void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107724], params.ptr, cast(void*)0);
	}
	final void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107727], cast(void*)0, cast(void*)0);
	}
	final void Bounce(Actor Other, Vector WallNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = WallNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107729], params.ptr, cast(void*)0);
	}
	final bool ProjectileHurtRadius(Vector HurtOrigin, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HurtOrigin;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107732], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool HurtRadius_Internal(float DamageAmount, float InDamageRadius, ScriptClass DamageType, float Momentum, Vector HurtOrigin, Vector AltHurtOrigin, Actor IgnoredActor, Controller InstigatedByController, bool bDoFullDamage)
	{
		ubyte params[56];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		*cast(float*)&params[4] = InDamageRadius;
		*cast(ScriptClass*)&params[8] = DamageType;
		*cast(float*)&params[12] = Momentum;
		*cast(Vector*)&params[16] = HurtOrigin;
		*cast(Vector*)&params[28] = AltHurtOrigin;
		*cast(Actor*)&params[40] = IgnoredActor;
		*cast(Controller*)&params[44] = InstigatedByController;
		*cast(bool*)&params[48] = bDoFullDamage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107741], params.ptr, cast(void*)0);
		return *cast(bool*)&params[52];
	}
	final void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107763], params.ptr, cast(void*)0);
	}
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107773], params.ptr, cast(void*)0);
	}
	final void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107778], params.ptr, cast(void*)0);
	}
}
