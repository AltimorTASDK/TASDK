module UnrealScript.TribesGame.TrProjectile;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProjectile")); }
	private static __gshared TrProjectile mDefaultProperties;
	@property final static TrProjectile DefaultProperties() { mixin(MGDPC("TrProjectile", "TrProjectile TribesGame.Default__TrProjectile")); }
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
			ScriptFunction IsBlockedByBlocker() { mixin(MGF("mIsBlockedByBlocker", "Function TribesGame.TrProjectile.IsBlockedByBlocker")); }
			ScriptFunction OrientToSlope() { mixin(MGF("mOrientToSlope", "Function TribesGame.TrProjectile.OrientToSlope")); }
			ScriptFunction CalculateHitLocation() { mixin(MGF("mCalculateHitLocation", "Function TribesGame.TrProjectile.CalculateHitLocation")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function TribesGame.TrProjectile.ReplicatedEvent")); }
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function TribesGame.TrProjectile.PreBeginPlay")); }
			ScriptFunction ExplodeFromTimeLimit() { mixin(MGF("mExplodeFromTimeLimit", "Function TribesGame.TrProjectile.ExplodeFromTimeLimit")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrProjectile.PostBeginPlay")); }
			ScriptFunction ClientReceivedProjectileToTether() { mixin(MGF("mClientReceivedProjectileToTether", "Function TribesGame.TrProjectile.ClientReceivedProjectileToTether")); }
			ScriptFunction CreateProjectileLight() { mixin(MGF("mCreateProjectileLight", "Function TribesGame.TrProjectile.CreateProjectileLight")); }
			ScriptFunction DetonateObsolete() { mixin(MGF("mDetonateObsolete", "Function TribesGame.TrProjectile.DetonateObsolete")); }
			ScriptFunction DestroyOldestOverLimit() { mixin(MGF("mDestroyOldestOverLimit", "Function TribesGame.TrProjectile.DestroyOldestOverLimit")); }
			ScriptFunction GetMaxDeployedLimit() { mixin(MGF("mGetMaxDeployedLimit", "Function TribesGame.TrProjectile.GetMaxDeployedLimit")); }
			ScriptFunction Init() { mixin(MGF("mInit", "Function TribesGame.TrProjectile.Init")); }
			ScriptFunction InitProjectile() { mixin(MGF("mInitProjectile", "Function TribesGame.TrProjectile.InitProjectile")); }
			ScriptFunction ApplyInheritance() { mixin(MGF("mApplyInheritance", "Function TribesGame.TrProjectile.ApplyInheritance")); }
			ScriptFunction ClientCheckFastSpawnExplode() { mixin(MGF("mClientCheckFastSpawnExplode", "Function TribesGame.TrProjectile.ClientCheckFastSpawnExplode")); }
			ScriptFunction SpawnExplosionEffects() { mixin(MGF("mSpawnExplosionEffects", "Function TribesGame.TrProjectile.SpawnExplosionEffects")); }
			ScriptFunction GetExplosionSound() { mixin(MGF("mGetExplosionSound", "Function TribesGame.TrProjectile.GetExplosionSound")); }
			ScriptFunction Explode() { mixin(MGF("mExplode", "Function TribesGame.TrProjectile.Explode")); }
			ScriptFunction ShutDown() { mixin(MGF("mShutDown", "Function TribesGame.TrProjectile.ShutDown")); }
			ScriptFunction Bounce() { mixin(MGF("mBounce", "Function TribesGame.TrProjectile.Bounce")); }
			ScriptFunction ProjectileHurtRadius() { mixin(MGF("mProjectileHurtRadius", "Function TribesGame.TrProjectile.ProjectileHurtRadius")); }
			ScriptFunction HurtRadius_Internal() { mixin(MGF("mHurtRadius_Internal", "Function TribesGame.TrProjectile.HurtRadius_Internal")); }
			ScriptFunction HitWall() { mixin(MGF("mHitWall", "Function TribesGame.TrProjectile.HitWall")); }
			ScriptFunction Touch() { mixin(MGF("mTouch", "Function TribesGame.TrProjectile.Touch")); }
			ScriptFunction ProcessTouch() { mixin(MGF("mProcessTouch", "Function TribesGame.TrProjectile.ProcessTouch")); }
		}
	}
	static struct WaitingForVelocity
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrProjectile.WaitingForVelocity")); }
	}
	@property final
	{
		auto ref
		{
			TrObject.TR_EQUIP_POINT m_SpawnedEquipPoint() { mixin(MGPC("TrObject.TR_EQUIP_POINT", 756)); }
			int r_nTetherId() { mixin(MGPC("int", 736)); }
			Vector r_vSpawnLocation() { mixin(MGPC("Vector", 776)); }
			float m_fInstigatorExtraZMomentum() { mixin(MGPC("float", 732)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_ProjMesh'!
			ScriptArray!(UDKPawn.MaterialImpactEffect) ImpactEffects() { mixin(MGPC("ScriptArray!(UDKPawn.MaterialImpactEffect)", 788)); }
			TrDevice SpawnedFromDevice() { mixin(MGPC("TrDevice", 812)); }
			float m_fAlwaysRelevantDistanceSquared() { mixin(MGPC("float", 808)); }
			float m_fMinLifespan() { mixin(MGPC("float", 804)); }
			float m_fMaxLifespan() { mixin(MGPC("float", 800)); }
			Vector m_vAccelDirection() { mixin(MGPC("Vector", 764)); }
			float m_fClientSimulatedSpeed() { mixin(MGPC("float", 760)); }
			float m_fTweenSpeed() { mixin(MGPC("float", 752)); }
			float m_fCurrentTetherTweenAmount() { mixin(MGPC("float", 748)); }
			TrProjectile c_ChildTetheredProjectile() { mixin(MGPC("TrProjectile", 744)); }
			TrProjectile c_ParentTetheredProjectile() { mixin(MGPC("TrProjectile", 740)); }
			float m_fInstigatorMomentumTransferMultiplier() { mixin(MGPC("float", 728)); }
			float m_fAmbientSoundFadeOut() { mixin(MGPC("float", 724)); }
			float m_fAmbientSoundFadeIn() { mixin(MGPC("float", 720)); }
			float m_fDirectHitMultiplier() { mixin(MGPC("float", 716)); }
			float m_fBounceDampingPercent() { mixin(MGPC("float", 712)); }
			int m_nPerPlayerMaxDeployed() { mixin(MGPC("int", 708)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_ProjLightEnvironment'!
			float m_fMaxProjInheritPct() { mixin(MGPC("float", 700)); }
			float m_fProjInheritVelocityPctZ() { mixin(MGPC("float", 696)); }
			float m_fProjInheritVelocityPct() { mixin(MGPC("float", 692)); }
			float m_fXYDamageRadius() { mixin(MGPC("float", 688)); }
			ScriptClass m_SpawnedDeployableClass() { mixin(MGPC("ScriptClass", 680)); }
		}
		bool m_bTether() { mixin(MGBPC(684, 0x40)); }
		bool m_bTether(bool val) { mixin(MSBPC(684, 0x40)); }
		bool m_bSimulateAutonomousProjectiles() { mixin(MGBPC(684, 0x80)); }
		bool m_bSimulateAutonomousProjectiles(bool val) { mixin(MSBPC(684, 0x80)); }
		bool m_bIsBullet() { mixin(MGBPC(684, 0x100)); }
		bool m_bIsBullet(bool val) { mixin(MSBPC(684, 0x100)); }
		bool m_bAuthoritativeExploding() { mixin(MGBPC(684, 0x20)); }
		bool m_bAuthoritativeExploding(bool val) { mixin(MSBPC(684, 0x20)); }
		bool m_bOrientToWall() { mixin(MGBPC(684, 0x10)); }
		bool m_bOrientToWall(bool val) { mixin(MSBPC(684, 0x10)); }
		bool m_bHasBounced() { mixin(MGBPC(684, 0x8)); }
		bool m_bHasBounced(bool val) { mixin(MSBPC(684, 0x8)); }
		bool m_bFastProjectile() { mixin(MGBPC(684, 0x4)); }
		bool m_bFastProjectile(bool val) { mixin(MSBPC(684, 0x4)); }
		bool m_bDebugProjectileRadius() { mixin(MGBPC(684, 0x2)); }
		bool m_bDebugProjectileRadius(bool val) { mixin(MSBPC(684, 0x2)); }
		bool m_bLimitXYDamageCheck() { mixin(MGBPC(684, 0x1)); }
		bool m_bLimitXYDamageCheck(bool val) { mixin(MSBPC(684, 0x1)); }
	}
final:
	bool IsBlockedByBlocker(Actor DamageInstigator, Actor Target, Actor* OriginActor = null, bool* CheckWorldGeometry = null, Vector* AltOriginLocation = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = DamageInstigator;
		*cast(Actor*)&params[4] = Target;
		if (OriginActor !is null)
			*cast(Actor*)&params[8] = *OriginActor;
		if (CheckWorldGeometry !is null)
			*cast(bool*)&params[12] = *CheckWorldGeometry;
		if (AltOriginLocation !is null)
			*cast(Vector*)&params[16] = *AltOriginLocation;
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
	void DetonateObsolete(bool* bDetonateFromAOE = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bDetonateFromAOE !is null)
			*cast(bool*)params.ptr = *bDetonateFromAOE;
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
	void InitProjectile(Vector Direction, ScriptClass* ClassToInherit = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		if (ClassToInherit !is null)
			*cast(ScriptClass*)&params[12] = *ClassToInherit;
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
	bool HurtRadius_Internal(float DamageAmount, float InDamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, Vector AltHurtOrigin, Actor* IgnoredActor = null, Controller* InstigatedByController = null, bool* bDoFullDamage = null)
	{
		ubyte params[56];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		*cast(float*)&params[4] = InDamageRadius;
		*cast(ScriptClass*)&params[8] = pDamageType;
		*cast(float*)&params[12] = Momentum;
		*cast(Vector*)&params[16] = HurtOrigin;
		*cast(Vector*)&params[28] = AltHurtOrigin;
		if (IgnoredActor !is null)
			*cast(Actor*)&params[40] = *IgnoredActor;
		if (InstigatedByController !is null)
			*cast(Controller*)&params[44] = *InstigatedByController;
		if (bDoFullDamage !is null)
			*cast(bool*)&params[48] = *bDoFullDamage;
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
