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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProjectile")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsBlockedByBlocker;
			ScriptFunction mOrientToSlope;
			ScriptFunction mCalculateHitLocation;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPreBeginPlay;
			ScriptFunction mExplodeFromTimeLimit;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mClientReceivedProjectileToTether;
			ScriptFunction mCreateProjectileLight;
			ScriptFunction mDetonateObsolete;
			ScriptFunction mDestroyOldestOverLimit;
			ScriptFunction mGetMaxDeployedLimit;
			ScriptFunction mInit;
			ScriptFunction mInitProjectile;
			ScriptFunction mApplyInheritance;
			ScriptFunction mClientCheckFastSpawnExplode;
			ScriptFunction mSpawnExplosionEffects;
			ScriptFunction mGetExplosionSound;
			ScriptFunction mExplode;
			ScriptFunction mShutDown;
			ScriptFunction mBounce;
			ScriptFunction mProjectileHurtRadius;
			ScriptFunction mHurtRadius_Internal;
			ScriptFunction mHitWall;
			ScriptFunction mTouch;
			ScriptFunction mProcessTouch;
		}
		public @property static final
		{
			ScriptFunction IsBlockedByBlocker() { return mIsBlockedByBlocker ? mIsBlockedByBlocker : (mIsBlockedByBlocker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.IsBlockedByBlocker")); }
			ScriptFunction OrientToSlope() { return mOrientToSlope ? mOrientToSlope : (mOrientToSlope = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.OrientToSlope")); }
			ScriptFunction CalculateHitLocation() { return mCalculateHitLocation ? mCalculateHitLocation : (mCalculateHitLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.CalculateHitLocation")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.ReplicatedEvent")); }
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.PreBeginPlay")); }
			ScriptFunction ExplodeFromTimeLimit() { return mExplodeFromTimeLimit ? mExplodeFromTimeLimit : (mExplodeFromTimeLimit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.ExplodeFromTimeLimit")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.PostBeginPlay")); }
			ScriptFunction ClientReceivedProjectileToTether() { return mClientReceivedProjectileToTether ? mClientReceivedProjectileToTether : (mClientReceivedProjectileToTether = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.ClientReceivedProjectileToTether")); }
			ScriptFunction CreateProjectileLight() { return mCreateProjectileLight ? mCreateProjectileLight : (mCreateProjectileLight = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.CreateProjectileLight")); }
			ScriptFunction DetonateObsolete() { return mDetonateObsolete ? mDetonateObsolete : (mDetonateObsolete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.DetonateObsolete")); }
			ScriptFunction DestroyOldestOverLimit() { return mDestroyOldestOverLimit ? mDestroyOldestOverLimit : (mDestroyOldestOverLimit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.DestroyOldestOverLimit")); }
			ScriptFunction GetMaxDeployedLimit() { return mGetMaxDeployedLimit ? mGetMaxDeployedLimit : (mGetMaxDeployedLimit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.GetMaxDeployedLimit")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.Init")); }
			ScriptFunction InitProjectile() { return mInitProjectile ? mInitProjectile : (mInitProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.InitProjectile")); }
			ScriptFunction ApplyInheritance() { return mApplyInheritance ? mApplyInheritance : (mApplyInheritance = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.ApplyInheritance")); }
			ScriptFunction ClientCheckFastSpawnExplode() { return mClientCheckFastSpawnExplode ? mClientCheckFastSpawnExplode : (mClientCheckFastSpawnExplode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.ClientCheckFastSpawnExplode")); }
			ScriptFunction SpawnExplosionEffects() { return mSpawnExplosionEffects ? mSpawnExplosionEffects : (mSpawnExplosionEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.SpawnExplosionEffects")); }
			ScriptFunction GetExplosionSound() { return mGetExplosionSound ? mGetExplosionSound : (mGetExplosionSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.GetExplosionSound")); }
			ScriptFunction Explode() { return mExplode ? mExplode : (mExplode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.Explode")); }
			ScriptFunction ShutDown() { return mShutDown ? mShutDown : (mShutDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.ShutDown")); }
			ScriptFunction Bounce() { return mBounce ? mBounce : (mBounce = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.Bounce")); }
			ScriptFunction ProjectileHurtRadius() { return mProjectileHurtRadius ? mProjectileHurtRadius : (mProjectileHurtRadius = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.ProjectileHurtRadius")); }
			ScriptFunction HurtRadius_Internal() { return mHurtRadius_Internal ? mHurtRadius_Internal : (mHurtRadius_Internal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.HurtRadius_Internal")); }
			ScriptFunction HitWall() { return mHitWall ? mHitWall : (mHitWall = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.HitWall")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.Touch")); }
			ScriptFunction ProcessTouch() { return mProcessTouch ? mProcessTouch : (mProcessTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProjectile.ProcessTouch")); }
		}
	}
	@property final
	{
		auto ref
		{
			TrObject.TR_EQUIP_POINT m_SpawnedEquipPoint() { return *cast(TrObject.TR_EQUIP_POINT*)(cast(size_t)cast(void*)this + 756); }
			int r_nTetherId() { return *cast(int*)(cast(size_t)cast(void*)this + 736); }
			Vector r_vSpawnLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 776); }
			float m_fInstigatorExtraZMomentum() { return *cast(float*)(cast(size_t)cast(void*)this + 732); }
			ScriptArray!(UDKPawn.MaterialImpactEffect) ImpactEffects() { return *cast(ScriptArray!(UDKPawn.MaterialImpactEffect)*)(cast(size_t)cast(void*)this + 788); }
			TrDevice SpawnedFromDevice() { return *cast(TrDevice*)(cast(size_t)cast(void*)this + 812); }
			float m_fAlwaysRelevantDistanceSquared() { return *cast(float*)(cast(size_t)cast(void*)this + 808); }
			float m_fMinLifespan() { return *cast(float*)(cast(size_t)cast(void*)this + 804); }
			float m_fMaxLifespan() { return *cast(float*)(cast(size_t)cast(void*)this + 800); }
			Vector m_vAccelDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 764); }
			float m_fClientSimulatedSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 760); }
			float m_fTweenSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 752); }
			float m_fCurrentTetherTweenAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 748); }
			TrProjectile c_ChildTetheredProjectile() { return *cast(TrProjectile*)(cast(size_t)cast(void*)this + 744); }
			TrProjectile c_ParentTetheredProjectile() { return *cast(TrProjectile*)(cast(size_t)cast(void*)this + 740); }
			float m_fInstigatorMomentumTransferMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
			float m_fAmbientSoundFadeOut() { return *cast(float*)(cast(size_t)cast(void*)this + 724); }
			float m_fAmbientSoundFadeIn() { return *cast(float*)(cast(size_t)cast(void*)this + 720); }
			float m_fDirectHitMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
			float m_fBounceDampingPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 712); }
			int m_nPerPlayerMaxDeployed() { return *cast(int*)(cast(size_t)cast(void*)this + 708); }
			float m_fMaxProjInheritPct() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
			float m_fProjInheritVelocityPctZ() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
			float m_fProjInheritVelocityPct() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
			float m_fXYDamageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
			ScriptClass m_SpawnedDeployableClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 680); }
		}
		bool m_bTether() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x40) != 0; }
		bool m_bTether(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x40; } return val; }
		bool m_bSimulateAutonomousProjectiles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x80) != 0; }
		bool m_bSimulateAutonomousProjectiles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x80; } return val; }
		bool m_bIsBullet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x100) != 0; }
		bool m_bIsBullet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x100; } return val; }
		bool m_bAuthoritativeExploding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x20) != 0; }
		bool m_bAuthoritativeExploding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x20; } return val; }
		bool m_bOrientToWall() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x10) != 0; }
		bool m_bOrientToWall(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x10; } return val; }
		bool m_bHasBounced() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x8) != 0; }
		bool m_bHasBounced(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x8; } return val; }
		bool m_bFastProjectile() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x4) != 0; }
		bool m_bFastProjectile(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x4; } return val; }
		bool m_bDebugProjectileRadius() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x2) != 0; }
		bool m_bDebugProjectileRadius(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x2; } return val; }
		bool m_bLimitXYDamageCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x1) != 0; }
		bool m_bLimitXYDamageCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x1; } return val; }
	}
final:
	bool IsBlockedByBlocker(Actor DamageInstigator, Actor Target, Actor OriginActor, bool CheckWorldGeometry, Vector AltOriginLocation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = DamageInstigator;
		*cast(Actor*)&params[4] = Target;
		*cast(Actor*)&params[8] = OriginActor;
		*cast(bool*)&params[12] = CheckWorldGeometry;
		*cast(Vector*)&params[16] = AltOriginLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsBlockedByBlocker, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void OrientToSlope(Vector HitNormal)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.OrientToSlope, params.ptr, cast(void*)0);
	}
	static Vector CalculateHitLocation(Actor shooter, Vector ShotDirection, Vector ShotLocation, float ClampedMaxSpeed)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Actor*)params.ptr = shooter;
		*cast(Vector*)&params[4] = ShotDirection;
		*cast(Vector*)&params[16] = ShotLocation;
		*cast(float*)&params[28] = ClampedMaxSpeed;
		StaticClass.ProcessEvent(Functions.CalculateHitLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[32];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ExplodeFromTimeLimit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ExplodeFromTimeLimit, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ClientReceivedProjectileToTether()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReceivedProjectileToTether, cast(void*)0, cast(void*)0);
	}
	void CreateProjectileLight()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateProjectileLight, cast(void*)0, cast(void*)0);
	}
	void DetonateObsolete(bool bDetonateFromAOE)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDetonateFromAOE;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetonateObsolete, params.ptr, cast(void*)0);
	}
	void DestroyOldestOverLimit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyOldestOverLimit, cast(void*)0, cast(void*)0);
	}
	int GetMaxDeployedLimit()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxDeployedLimit, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void Init(Vector Direction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitProjectile, params.ptr, cast(void*)0);
	}
	void ApplyInheritance(Vector ProjectileDir)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = ProjectileDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyInheritance, params.ptr, cast(void*)0);
	}
	void ClientCheckFastSpawnExplode()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientCheckFastSpawnExplode, cast(void*)0, cast(void*)0);
	}
	void SpawnExplosionEffects(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnExplosionEffects, params.ptr, cast(void*)0);
	}
	SoundCue GetExplosionSound(PhysicalMaterial HitMaterial, Actor HitActor)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = HitMaterial;
		*cast(Actor*)&params[4] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetExplosionSound, params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[8];
	}
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, params.ptr, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShutDown, cast(void*)0, cast(void*)0);
	}
	void Bounce(Actor Other, Vector WallNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = WallNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Bounce, params.ptr, cast(void*)0);
	}
	bool ProjectileHurtRadius(Vector HurtOrigin, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HurtOrigin;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileHurtRadius, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool HurtRadius_Internal(float DamageAmount, float InDamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, Vector AltHurtOrigin, Actor IgnoredActor, Controller InstigatedByController, bool bDoFullDamage)
	{
		ubyte params[56];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		*cast(float*)&params[4] = InDamageRadius;
		*cast(ScriptClass*)&params[8] = pDamageType;
		*cast(float*)&params[12] = Momentum;
		*cast(Vector*)&params[16] = HurtOrigin;
		*cast(Vector*)&params[28] = AltHurtOrigin;
		*cast(Actor*)&params[40] = IgnoredActor;
		*cast(Controller*)&params[44] = InstigatedByController;
		*cast(bool*)&params[48] = bDoFullDamage;
		(cast(ScriptObject)this).ProcessEvent(Functions.HurtRadius_Internal, params.ptr, cast(void*)0);
		return *cast(bool*)&params[52];
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
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
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
}
