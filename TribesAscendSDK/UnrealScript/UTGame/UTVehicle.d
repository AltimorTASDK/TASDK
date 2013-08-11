module UnrealScript.UTGame.UTVehicle;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.StaticMesh;
import UnrealScript.UTGame.UTHUD;
import UnrealScript.Engine.Projectile;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTMapInfo;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTGib;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.UTGame.UTVehicleDeathPiece;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.Engine.Texture2D;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.UTGame.UTBot;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.UDKBase.UDKProjectile;
import UnrealScript.UDKBase.UDKCarriedObject;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.UTGame.UTVehicleWeapon;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UTGame.UTSeqAct_ExitVehicle;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.UTGame.UTProjectile;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Emitter;
import UnrealScript.UTGame.UTVehicleFactory;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.Weapon;

extern(C++) interface UTVehicle : UDKVehicle
{
public extern(D):
	enum UTVEHICLE_UNSET_TEAM = 255;
	enum EAIVehiclePurpose : ubyte
	{
		AIP_Offensive = 0,
		AIP_Defensive = 1,
		AIP_Any = 2,
		AIP_MAX = 3,
	}
	struct MaterialList
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)&this + 0); }
	}
	struct TimePosition
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			float Time() { return *cast(float*)(cast(size_t)&this + 12); }
			Vector Position() { return *cast(Vector*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			UTVehicle NextVehicle() { return *cast(UTVehicle*)(cast(size_t)cast(void*)this + 2112); }
			float DefaultFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 2652); }
			ScriptArray!(SoundCue) HornSounds() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 2048); }
			ScriptArray!(MaterialInterface) TeamMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 2196); }
			ScriptArray!(UDKPawn.DistanceBasedParticleTemplate) BigExplosionTemplates() { return *cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)*)(cast(size_t)cast(void*)this + 2232); }
			ScriptArray!(UDKPawn.DistanceBasedParticleTemplate) DistanceTurretExplosionTemplates() { return *cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)*)(cast(size_t)cast(void*)this + 2312); }
			ScriptArray!(ParticleSystem) SpawnInTemplates() { return *cast(ScriptArray!(ParticleSystem)*)(cast(size_t)cast(void*)this + 2560); }
			ScriptArray!(UTVehicle.MaterialList) SpawnMaterialLists() { return *cast(ScriptArray!(UTVehicle.MaterialList)*)(cast(size_t)cast(void*)this + 2572); }
			ScriptArray!(MaterialInterface) OriginalMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 2608); }
			ScriptArray!(UTVehicle.TimePosition) OldPositions() { return *cast(ScriptArray!(UTVehicle.TimePosition)*)(cast(size_t)cast(void*)this + 2656); }
			ScriptArray!(SoundNodeWave) EnemyVehicleSound() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 2732); }
			ScriptArray!(SoundNodeWave) VehicleDestroyedSound() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 2744); }
			float LastEnemyWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2728); }
			StaticMesh ReferenceMovementMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 2724); }
			ParticleSystem DisabledTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 2716); }
			float TimeLastDisabled() { return *cast(float*)(cast(size_t)cast(void*)this + 2712); }
			float DisabledTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2708); }
			Vector OldCameraPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2696); }
			UTGib DeathCameraGib() { return *cast(UTGib*)(cast(size_t)cast(void*)this + 2692); }
			float MinCameraDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2688); }
			float LookForwardDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2684); }
			Vector CameraOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2672); }
			float CameraLag() { return *cast(float*)(cast(size_t)cast(void*)this + 2668); }
			float CameraSmoothingFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 2648); }
			float OldCamPosZ() { return *cast(float*)(cast(size_t)cast(void*)this + 2644); }
			float SeatCameraScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2640); }
			float LastCollisionDamageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2636); }
			float CollisionDamageMult() { return *cast(float*)(cast(size_t)cast(void*)this + 2632); }
			MaterialInterface BurnOutMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 2624); }
			float SpawnInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2620); }
			UObject.InterpCurveFloat SpawnMaterialParameterCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 2592); }
			ScriptName SpawnMaterialParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2584); }
			UIRoot.TextureCoordinates HudCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2544); }
			Texture2D HudIcons() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 2540); }
			Vector PassengerTeamBeaconOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2528); }
			PlayerReplicationInfo PassengerPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 2512); }
			Vector TeamBeaconOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2500); }
			float HealthPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2496); }
			int LastHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 2492); }
			UIRoot.TextureCoordinates DropOrbIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2476); }
			UIRoot.TextureCoordinates DropFlagIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2460); }
			UIRoot.TextureCoordinates EnterToolTipIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2444); }
			UIRoot.TextureCoordinates FlipToolTipIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2428); }
			UIRoot.TextureCoordinates IconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2412); }
			float MapSize() { return *cast(float*)(cast(size_t)cast(void*)this + 2408); }
			ScriptName FlagBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2400); }
			Rotator FlagRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2388); }
			Vector FlagOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2376); }
			SoundCue BoostPadSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2372); }
			SoundCue SpawnOutSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2368); }
			SoundCue SpawnInSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2364); }
			float SpawnRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2360); }
			ScriptName BurnTimeParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2352); }
			SoundCue ExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2348); }
			float TurretExplosiveForce() { return *cast(float*)(cast(size_t)cast(void*)this + 2344); }
			StaticMesh DestroyedTurretTemplate() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 2340); }
			UTVehicleDeathPiece DestroyedTurret() { return *cast(UTVehicleDeathPiece*)(cast(size_t)cast(void*)this + 2336); }
			Vector TurretOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2324); }
			ScriptName TurretSocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2304); }
			ScriptName TurretScaleControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2296); }
			float OuterExplosionShakeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2292); }
			float InnerExplosionShakeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2288); }
			CameraAnim DeathExplosionShake() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 2284); }
			float ExplosionInAirAngVel() { return *cast(float*)(cast(size_t)cast(void*)this + 2280); }
			float ExplosionMomentum() { return *cast(float*)(cast(size_t)cast(void*)this + 2276); }
			float ExplosionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2272); }
			float ExplosionDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2268); }
			int DelayedBurnoutCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2264); }
			float DeadVehicleLifeSpan() { return *cast(float*)(cast(size_t)cast(void*)this + 2260); }
			float BurnOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2256); }
			ScriptName BigExplosionSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2248); }
			ParticleSystem SecondaryExplosion() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 2244); }
			ParticleSystem ExplosionTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 2228); }
			float MaxFireEffectDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2224); }
			float MaxImpactEffectDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2220); }
			ScriptClass ExplosionDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2216); }
			float DamageSmokeThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2212); }
			ScriptClass VehiclePieceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2208); }
			int ClientHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 2192); }
			float TimeTilSecondaryVehicleExplosion() { return *cast(float*)(cast(size_t)cast(void*)this + 2188); }
			Emitter DeathExplosion() { return *cast(Emitter*)(cast(size_t)cast(void*)this + 2184); }
			float MaxExplosionLightDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2180); }
			ScriptClass ExplosionLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2176); }
			ScriptClass VehicleDrowningDamType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2172); }
			float HUDExtent() { return *cast(float*)(cast(size_t)cast(void*)this + 2168); }
			float TeamBeaconPlayerInfoMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
			UDKPlayerController.ObjectiveAnnouncementInfo NeedToPickUpAnnouncement() { return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)(cast(size_t)cast(void*)this + 2148); }
			ScriptString VehicleNameString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2136); }
			ScriptString VehiclePositionString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2124); }
			UTBot Reservation() { return *cast(UTBot*)(cast(size_t)cast(void*)this + 2120); }
			UTVehicleFactory ParentFactory() { return *cast(UTVehicleFactory*)(cast(size_t)cast(void*)this + 2116); }
			SoundCue StolenSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2108); }
			int StolenAnnouncementIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 2104); }
			SoundCue RanOverSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2100); }
			ScriptClass RanOverDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2096); }
			SoundCue LockedOnSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2092); }
			float ConsoleSteerScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2088); }
			float LookSteerDeadZone() { return *cast(float*)(cast(size_t)cast(void*)this + 2084); }
			float LookSteerDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 2080); }
			float LookSteerSensitivity() { return *cast(float*)(cast(size_t)cast(void*)this + 2076); }
			float LeftStickDirDeadZone() { return *cast(float*)(cast(size_t)cast(void*)this + 2072); }
			int HornIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 2068); }
			float LastHornTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2064); }
			float HornAIRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2060); }
			float MaxDesireability() { return *cast(float*)(cast(size_t)cast(void*)this + 2044); }
			SoundCue LinkedEndSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2040); }
			SoundCue LinkedToCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2036); }
			float LinkHealMult() { return *cast(float*)(cast(size_t)cast(void*)this + 2028); }
			float InitialSpawnDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 2024); }
			float RespawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2020); }
			float PlayerStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2016); }
			float VehicleLostTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2012); }
			PhysicalMaterial DefaultPhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 2004); }
			PhysicalMaterial DrivingPhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 2000); }
			float DeflectionReverseThresh() { return *cast(float*)(cast(size_t)cast(void*)this + 1996); }
			Actor NoPassengerObjective() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1992); }
			ubyte LinkedToCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1989); }
			UTVehicle.EAIVehiclePurpose AIPurpose() { return *cast(UTVehicle.EAIVehiclePurpose*)(cast(size_t)cast(void*)this + 1988); }
			SoundCue VehicleLockedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1984); }
		}
		bool bCanCarryFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x2) != 0; }
		bool bCanCarryFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x2; } return val; }
		bool bRequestedEntryWithFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x200000) != 0; }
		bool bRequestedEntryWithFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x200000; } return val; }
		bool bHasCustomEntryRadius() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x10) != 0; }
		bool bHasCustomEntryRadius(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x10; } return val; }
		bool bDropDetailWhenDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x10000) != 0; }
		bool bDropDetailWhenDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x10000; } return val; }
		bool bSpectatedView() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x200) != 0; }
		bool bSpectatedView(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x200; } return val; }
		bool bDriverHoldsFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x1) != 0; }
		bool bDriverHoldsFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x1; } return val; }
		bool bIsNecrisVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x100) != 0; }
		bool bIsNecrisVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x100; } return val; }
		bool bHasEnemyVehicleSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x80) != 0; }
		bool bHasEnemyVehicleSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x80; } return val; }
		bool bStealthVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x40) != 0; }
		bool bStealthVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x40; } return val; }
		bool bShowDamageDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x20) != 0; }
		bool bShowDamageDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x20; } return val; }
		bool bAcceptTurretJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x10) != 0; }
		bool bAcceptTurretJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x10; } return val; }
		bool bIsConsoleTurning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x8) != 0; }
		bool bIsConsoleTurning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x8; } return val; }
		bool bStopDeathCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x4) != 0; }
		bool bStopDeathCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x4; } return val; }
		bool bCameraNeverHidesVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x2) != 0; }
		bool bCameraNeverHidesVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x2; } return val; }
		bool bFixedCamZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x1) != 0; }
		bool bFixedCamZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x1; } return val; }
		bool bNoFollowJumpZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x80000000) != 0; }
		bool bNoFollowJumpZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x80000000; } return val; }
		bool bLimitCameraZLookingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x40000000) != 0; }
		bool bLimitCameraZLookingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x40000000; } return val; }
		bool bNoZSmoothing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x20000000) != 0; }
		bool bNoZSmoothing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x20000000; } return val; }
		bool bRotateCameraUnderVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x10000000) != 0; }
		bool bRotateCameraUnderVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x10000000; } return val; }
		bool bReducedFallingCollisionDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x8000000) != 0; }
		bool bReducedFallingCollisionDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x8000000; } return val; }
		bool bPlayingSpawnEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x4000000) != 0; }
		bool bPlayingSpawnEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x4000000; } return val; }
		bool bPostRenderTraceSucceeded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x2000000) != 0; }
		bool bPostRenderTraceSucceeded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x2000000; } return val; }
		bool bHasTurretExplosion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x1000000) != 0; }
		bool bHasTurretExplosion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x1000000; } return val; }
		bool bRagdollDriverOnDarkwalkerHorn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x800000) != 0; }
		bool bRagdollDriverOnDarkwalkerHorn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x800000; } return val; }
		bool bInitializedVehicleEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x400000) != 0; }
		bool bInitializedVehicleEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x400000; } return val; }
		bool bFindGroundExit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x100000) != 0; }
		bool bFindGroundExit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x100000; } return val; }
		bool bUsingLookSteer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x80000) != 0; }
		bool bUsingLookSteer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x80000; } return val; }
		bool bLookSteerOnSimpleControls() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x40000) != 0; }
		bool bLookSteerOnSimpleControls(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x40000; } return val; }
		bool bLookSteerOnNormalControls() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x20000) != 0; }
		bool bLookSteerOnNormalControls(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x20000; } return val; }
		bool bHasBeenDriven() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x8000) != 0; }
		bool bHasBeenDriven(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x8000; } return val; }
		bool bDriverCastsShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x4000) != 0; }
		bool bDriverCastsShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x4000; } return val; }
		bool bDrawHealthOnHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x2000) != 0; }
		bool bDrawHealthOnHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x2000; } return val; }
		bool bShouldLeaveForCombat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x1000) != 0; }
		bool bShouldLeaveForCombat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x1000; } return val; }
		bool bNeverReset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x800) != 0; }
		bool bNeverReset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x800; } return val; }
		bool bHasWeaponBar() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x400) != 0; }
		bool bHasWeaponBar(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x400; } return val; }
		bool bShouldAutoCenterViewPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x200) != 0; }
		bool bShouldAutoCenterViewPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x200; } return val; }
		bool bStickDeflectionThrottle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x100) != 0; }
		bool bStickDeflectionThrottle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x100; } return val; }
		bool bOverrideAVRiLLocks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x80) != 0; }
		bool bOverrideAVRiLLocks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x80; } return val; }
		bool bMustBeUpright() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x40) != 0; }
		bool bMustBeUpright(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x40; } return val; }
		bool bKeyVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x20) != 0; }
		bool bKeyVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x20; } return val; }
		bool bEnteringUnlocks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x8) != 0; }
		bool bEnteringUnlocks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x8; } return val; }
		bool bValidLinkTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x4) != 0; }
		bool bValidLinkTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x4; } return val; }
	}
final:
	bool TryToDrive(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36430], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool InCustomEntryRadius(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36452], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39358], cast(void*)0, cast(void*)0);
	}
	void UpdateShadowSettings(bool bWantShadow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWantShadow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39360], params.ptr, cast(void*)0);
	}
	void ReattachMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39364], cast(void*)0, cast(void*)0);
	}
	void CreateDamageMaterialInstance()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39365], cast(void*)0, cast(void*)0);
	}
	void UpdateLookSteerStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39366], cast(void*)0, cast(void*)0);
	}
	void SetInputs(float InForward, float InStrafe, float InUp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InForward;
		*cast(float*)&params[4] = InStrafe;
		*cast(float*)&params[8] = InUp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39368], params.ptr, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39384], params.ptr, cast(void*)0);
	}
	float GetChargePower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39386], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void PlaySpawnEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39388], cast(void*)0, cast(void*)0);
	}
	void StopSpawnEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39391], cast(void*)0, cast(void*)0);
	}
	void EjectSeat(int SeatIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39393], params.ptr, cast(void*)0);
	}
	ScriptClass GetRanOverDamageType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39396], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void DisplayWeaponBar(Canvas pCanvas, UTHUD pHUD)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(UTHUD*)&params[4] = pHUD;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39398], params.ptr, cast(void*)0);
	}
	void DrawKillIcon(Canvas pCanvas, float ScreenX, float ScreenY, float HUDScaleX, float HUDScaleY)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = ScreenX;
		*cast(float*)&params[8] = ScreenY;
		*cast(float*)&params[12] = HUDScaleX;
		*cast(float*)&params[16] = HUDScaleY;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39402], params.ptr, cast(void*)0);
	}
	void RenderMapIcon(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, UObject.LinearColor FinalColor)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(UObject.LinearColor*)&params[12] = FinalColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39411], params.ptr, cast(void*)0);
	}
	float AdjustedStrength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39417], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool ContinueOnFoot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39419], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsDriverSeat(Vehicle TestSeatPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = TestSeatPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39426], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool RecommendCharge(UTBot B, Pawn Enemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = Enemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39429], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool CriticalChargeAttack(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39433], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void CreateVehicleEffect(int EffectIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EffectIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39436], params.ptr, cast(void*)0);
	}
	void InitializeEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39439], cast(void*)0, cast(void*)0);
	}
	void SetVehicleEffectParms(ScriptName TriggerName, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TriggerName;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[8] = PSC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39440], params.ptr, cast(void*)0);
	}
	void TriggerVehicleEffect(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39444], params.ptr, cast(void*)0);
	}
	void PlayVehicleSound(ScriptName SoundTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SoundTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39447], params.ptr, cast(void*)0);
	}
	void PlayVehicleAnimation(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39450], params.ptr, cast(void*)0);
	}
	void VehicleEvent(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39455], params.ptr, cast(void*)0);
	}
	void EntryAnnouncement(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39457], params.ptr, cast(void*)0);
	}
	Rotator ExitRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39460], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	bool FindAutoExit(Pawn ExitingDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39462], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RanInto(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39472], params.ptr, cast(void*)0);
	}
	void PancakeOther(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39479], params.ptr, cast(void*)0);
	}
	void TakeWaterDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39481], cast(void*)0, cast(void*)0);
	}
	void DriverRadiusDamage(float DamageAmount, float DamageRadius, Controller EventInstigator, ScriptClass pDamageType, float Momentum, Vector HitLocation, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		*cast(float*)&params[4] = DamageRadius;
		*cast(Controller*)&params[8] = EventInstigator;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(Actor*)&params[32] = DamageCauser;
		*cast(float*)&params[36] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39483], params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39495], cast(void*)0, cast(void*)0);
	}
	void SetTexturesToBeResident(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39500], params.ptr, cast(void*)0);
	}
	bool DisableVehicle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39505], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void EnableVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39508], cast(void*)0, cast(void*)0);
	}
	void TakeFireDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39509], cast(void*)0, cast(void*)0);
	}
	int GetSeatIndexFromPrefix(ScriptString Prefix)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Prefix;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39511], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void ServerSetConsoleTurning(bool bNewConsoleTurning)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewConsoleTurning;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39515], params.ptr, cast(void*)0);
	}
	void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *out_ViewRotation;
		*cast(Rotator*)&params[16] = *out_DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39517], params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
		*out_DeltaRot = *cast(Rotator*)&params[16];
	}
	Rotator GetClampedViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39524], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	bool ShouldClamp()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39532], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Rotator GetViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39534], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	void WeaponRotationChanged(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39536], params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39539], params.ptr, cast(void*)0);
	}
	void SetKeyVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39543], cast(void*)0, cast(void*)0);
	}
	void DrivingStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39544], cast(void*)0, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39545], params.ptr, cast(void*)0);
	}
	bool SeatAvailable(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39549], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AnySeatAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39552], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetSeatIndexForController(Controller ControllerToMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39555], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	Controller GetControllerForSeatIndex(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39559], params.ptr, cast(void*)0);
		return *cast(Controller*)&params[4];
	}
	void ServerAdjacentSeat(int Direction, Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Direction;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39562], params.ptr, cast(void*)0);
	}
	void ServerChangeSeat(int RequestedSeat)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39567], params.ptr, cast(void*)0);
	}
	bool HasPriority(Controller first, Controller Second)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = first;
		*cast(Controller*)&params[4] = Second;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39569], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool ChangeSeat(Controller ControllerToMove, int RequestedSeat)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToMove;
		*cast(int*)&params[4] = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39573], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39581], cast(void*)0, cast(void*)0);
	}
	Controller GetCollisionDamageInstigator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39582], params.ptr, cast(void*)0);
		return *cast(Controller*)params.ptr;
	}
	bool Died(Controller Killer, ScriptClass pDamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = pDamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39584], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	void BlowupVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39595], cast(void*)0, cast(void*)0);
	}
	PlayerReplicationInfo GetSeatPRI(int SeatNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39598], params.ptr, cast(void*)0);
		return *cast(PlayerReplicationInfo*)&params[4];
	}
	bool CanEnterVehicle(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39601], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool KickOutBot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39614], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void VehicleLocked(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39618], params.ptr, cast(void*)0);
	}
	bool ShouldShowUseable(PlayerController PC, float Dist)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(float*)&params[4] = Dist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39621], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39626], params.ptr, cast(void*)0);
	}
	float GetDisplayedHealth()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39648], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void RenderPassengerBeacons(PlayerController PC, Canvas pCanvas, UObject.LinearColor TeamColor, UObject.Color TextColor, UTWeapon Weap)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.LinearColor*)&params[8] = TeamColor;
		*cast(UObject.Color*)&params[24] = TextColor;
		*cast(UTWeapon*)&params[28] = Weap;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39650], params.ptr, cast(void*)0);
	}
	void PostRenderPassengerBeacon(PlayerController PC, Canvas pCanvas, UObject.LinearColor TeamColor, UObject.Color TextColor, UTWeapon Weap, PlayerReplicationInfo InPassengerPRI, Vector InPassengerTeamBeaconOffset)
	{
		ubyte params[48];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.LinearColor*)&params[8] = TeamColor;
		*cast(UObject.Color*)&params[24] = TextColor;
		*cast(UTWeapon*)&params[28] = Weap;
		*cast(PlayerReplicationInfo*)&params[32] = InPassengerPRI;
		*cast(Vector*)&params[36] = InPassengerTeamBeaconOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39656], params.ptr, cast(void*)0);
	}
	void SetTeamNum(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39671], params.ptr, cast(void*)0);
	}
	void TeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39673], cast(void*)0, cast(void*)0);
	}
	void TeamChanged_VehicleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39675], cast(void*)0, cast(void*)0);
	}
	bool Dodge(Actor.EDoubleClickDir DoubleClickMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39680], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void IncomingMissile(Projectile P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39683], params.ptr, cast(void*)0);
	}
	void ShootMissile(Projectile P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39686], params.ptr, cast(void*)0);
	}
	void SendLockOnMessage(int Switch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39688], params.ptr, cast(void*)0);
	}
	void LockOnWarning(UDKProjectile IncomingMissile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKProjectile*)params.ptr = IncomingMissile;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39693], params.ptr, cast(void*)0);
	}
	bool TooCloseToAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39695], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckTurretPitchLimit(int NeededPitch, int SeatIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = NeededPitch;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39701], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PlayHorn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39706], cast(void*)0, cast(void*)0);
	}
	bool DriverLeave(bool bForceLeave)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceLeave;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39713], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void UpdateControllerOnPossess(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39715], params.ptr, cast(void*)0);
	}
	int NumPassengers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39717], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	UTVehicle GetMoveTargetFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39721], params.ptr, cast(void*)0);
		return *cast(UTVehicle*)&params[4];
	}
	void HandleEnteringFlag(UTPlayerReplicationInfo EnteringPRI, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = EnteringPRI;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39724], params.ptr, cast(void*)0);
	}
	bool DriverEnter(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39729], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39734], params.ptr, cast(void*)0);
	}
	void AttachFlag(UTCarriedObject FlagActor, Pawn NewDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTCarriedObject*)params.ptr = FlagActor;
		*cast(Pawn*)&params[4] = NewDriver;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39738], params.ptr, cast(void*)0);
	}
	void DriverLeft()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39741], cast(void*)0, cast(void*)0);
	}
	int GetFirstAvailableSeat(bool bSeatMustAllowFlag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bSeatMustAllowFlag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39744], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool PassengerEnter(Pawn P, int SeatIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39748], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PassengerLeave(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39755], params.ptr, cast(void*)0);
	}
	void CheckReset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39757], cast(void*)0, cast(void*)0);
	}
	bool Occupied()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39760], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool OpenPositionFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39763], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float BotDesireability(UTSquadAI S, int TeamIndex, Actor Objective)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = S;
		*cast(int*)&params[4] = TeamIndex;
		*cast(Actor*)&params[8] = Objective;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39769], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	float ReservationCostMultiplier(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39776], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool SpokenFor(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39779], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39783], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetReservation(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39786], params.ptr, cast(void*)0);
	}
	bool TeamLink(int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39788], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AllowLinkThroughOwnedActor(Actor OwnedActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = OwnedActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39791], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HealDamage(int Amount, Controller Healer, ScriptClass pDamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		*cast(Controller*)&params[4] = Healer;
		*cast(ScriptClass*)&params[8] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39794], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void IncrementLinkedToCount()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39799], cast(void*)0, cast(void*)0);
	}
	void DecrementLinkedToCount()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39800], cast(void*)0, cast(void*)0);
	}
	void StartLinkedEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39801], cast(void*)0, cast(void*)0);
	}
	void StopLinkedEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39806], cast(void*)0, cast(void*)0);
	}
	void PlayHit(float Damage, Controller InstigatedBy, Vector HitLocation, ScriptClass pDamageType, Vector Momentum, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[64];
		params[] = 0;
		*cast(float*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39810], params.ptr, cast(void*)0);
	}
	void PlayTakeHitEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39822], cast(void*)0, cast(void*)0);
	}
	void NotifyTakeHit(Controller InstigatedBy, Vector HitLocation, int Damage, ScriptClass pDamageType, Vector Momentum)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = Damage;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39824], params.ptr, cast(void*)0);
	}
	void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39831], params.ptr, cast(void*)0);
	}
	Actor GetHomingTarget(UTProjectile Seeker, Controller InstigatedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTProjectile*)params.ptr = Seeker;
		*cast(Controller*)&params[4] = InstigatedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39843], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[8];
	}
	bool ImportantVehicle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39847], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void InitializeSeats()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39849], cast(void*)0, cast(void*)0);
	}
	void PreCacheSeatNames()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39853], cast(void*)0, cast(void*)0);
	}
	void InitializeTurrets()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39855], cast(void*)0, cast(void*)0);
	}
	void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39862], params.ptr, cast(void*)0);
	}
	void SetFiringMode(Weapon Weap, ubyte FiringModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = Weap;
		params[4] = FiringModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39865], params.ptr, cast(void*)0);
	}
	void ClearFlashCount(Weapon Who)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39868], params.ptr, cast(void*)0);
	}
	void IncrementFlashCount(Weapon Who, ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39871], params.ptr, cast(void*)0);
	}
	void SetFlashLocation(Weapon Who, ubyte FireModeNum, Vector NewLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		params[4] = FireModeNum;
		*cast(Vector*)&params[8] = NewLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39875], params.ptr, cast(void*)0);
	}
	void ClearFlashLocation(Weapon Who)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39880], params.ptr, cast(void*)0);
	}
	void GetBarrelLocationAndRotation(int SeatIndex, Vector* SocketLocation, Rotator* SocketRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Vector*)&params[4] = *SocketLocation;
		*cast(Rotator*)&params[16] = *SocketRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39883], params.ptr, cast(void*)0);
		*SocketLocation = *cast(Vector*)&params[4];
		*SocketRotation = *cast(Rotator*)&params[16];
	}
	Vector GetEffectLocation(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39887], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetPhysicalFireStartLoc(UTWeapon ForWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = ForWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39891], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Rotator GetWeaponAim(UTVehicleWeapon VWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTVehicleWeapon*)params.ptr = VWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39895], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[4];
	}
	bool OverrideBeginFire(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39919], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool OverrideEndFire(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39922], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetWeaponViewAxes(UTWeapon WhichWeapon, Vector* XAxis, Vector* YAxis, Vector* ZAxis)
	{
		ubyte params[40];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = WhichWeapon;
		*cast(Vector*)&params[4] = *XAxis;
		*cast(Vector*)&params[16] = *YAxis;
		*cast(Vector*)&params[28] = *ZAxis;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39925], params.ptr, cast(void*)0);
		*XAxis = *cast(Vector*)&params[4];
		*YAxis = *cast(Vector*)&params[16];
		*ZAxis = *cast(Vector*)&params[28];
	}
	void CauseMuzzleFlashLight(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39930], params.ptr, cast(void*)0);
	}
	void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39932], params.ptr, cast(void*)0);
	}
	void VehicleWeaponFired(bool bViaReplication, Vector HitLocation, int SeatIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bViaReplication;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39936], params.ptr, cast(void*)0);
	}
	void WeaponStoppedFiring(Weapon InWeapon, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39940], params.ptr, cast(void*)0);
	}
	void VehicleWeaponStoppedFiring(bool bViaReplication, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bViaReplication;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39943], params.ptr, cast(void*)0);
	}
	void VehicleWeaponFireEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39949], params.ptr, cast(void*)0);
	}
	Actor FindWeaponHitNormal(Vector* HitLocation, Vector* HitNormal, Vector End, Vector Start, Actor.TraceHitInfo* HitInfo)
	{
		ubyte params[80];
		params[] = 0;
		*cast(Vector*)params.ptr = *HitLocation;
		*cast(Vector*)&params[12] = *HitNormal;
		*cast(Vector*)&params[24] = End;
		*cast(Vector*)&params[36] = Start;
		*cast(Actor.TraceHitInfo*)&params[48] = *HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39952], params.ptr, cast(void*)0);
		*HitLocation = *cast(Vector*)params.ptr;
		*HitNormal = *cast(Vector*)&params[12];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[48];
		return *cast(Actor*)&params[76];
	}
	void VehicleWeaponImpactEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39959], params.ptr, cast(void*)0);
	}
	void SpawnImpactEmitter(Vector HitLocation, Vector HitNormal, UDKPawn.MaterialImpactEffect* ImpactEffect, int SeatIndex)
	{
		ubyte params[76];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		*cast(UDKPawn.MaterialImpactEffect*)&params[24] = *ImpactEffect;
		*cast(int*)&params[72] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39977], params.ptr, cast(void*)0);
		*ImpactEffect = *cast(UDKPawn.MaterialImpactEffect*)&params[24];
	}
	void VehicleAdjustFlashCount(int SeatIndex, ubyte FireModeNum, bool bClear)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		params[4] = FireModeNum;
		*cast(bool*)&params[8] = bClear;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39982], params.ptr, cast(void*)0);
	}
	void VehicleAdjustFlashLocation(int SeatIndex, ubyte FireModeNum, Vector NewLocation, bool bClear)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		params[4] = FireModeNum;
		*cast(Vector*)&params[8] = NewLocation;
		*cast(bool*)&params[20] = bClear;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39986], params.ptr, cast(void*)0);
	}
	void FindGoodEndView(PlayerController PC, Rotator* GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = *GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39991], params.ptr, cast(void*)0);
		*GoodRotation = *cast(Rotator*)&params[4];
	}
	bool CalcCamera(float DeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40001], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	Vector GetCameraFocus(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40008], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetCameraStart(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40015], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	float LimitCameraZ(float CurrentCamZ, float OriginalCamZ, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = CurrentCamZ;
		*cast(float*)&params[4] = OriginalCamZ;
		*cast(int*)&params[8] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40026], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void VehicleCalcCamera(float DeltaTime, int SeatIndex, Vector* out_CamLoc, Rotator* out_CamRot, Vector* CamStart, bool bPivotOnly)
	{
		ubyte params[48];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(int*)&params[4] = SeatIndex;
		*cast(Vector*)&params[8] = *out_CamLoc;
		*cast(Rotator*)&params[20] = *out_CamRot;
		*cast(Vector*)&params[32] = *CamStart;
		*cast(bool*)&params[44] = bPivotOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40033], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[8];
		*out_CamRot = *cast(Rotator*)&params[20];
		*CamStart = *cast(Vector*)&params[32];
	}
	void AdjustCameraScale(bool bMoveCameraIn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bMoveCameraIn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40060], params.ptr, cast(void*)0);
	}
	void StartBurnOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40062], cast(void*)0, cast(void*)0);
	}
	void TurnOffShadows()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40065], cast(void*)0, cast(void*)0);
	}
	void DisableDamageSmoke()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40066], cast(void*)0, cast(void*)0);
	}
	void DisableCollision()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40067], cast(void*)0, cast(void*)0);
	}
	void SetBurnOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40068], cast(void*)0, cast(void*)0);
	}
	bool ShouldSpawnExplosionLight(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40075], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void RBPenetrationDestroy()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40081], cast(void*)0, cast(void*)0);
	}
	void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComponent, Actor.CollisionImpactData* Collision, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = *Collision;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40149], params.ptr, cast(void*)0);
		*Collision = *cast(Actor.CollisionImpactData*)&params[8];
	}
	void TurretExplosion()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40169], cast(void*)0, cast(void*)0);
	}
	void StopVehicleSounds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40174], cast(void*)0, cast(void*)0);
	}
	void CheckDamageSmoke()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40176], cast(void*)0, cast(void*)0);
	}
	void AttachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40177], params.ptr, cast(void*)0);
	}
	void SitDriver(UTPawn UTP, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40180], params.ptr, cast(void*)0);
	}
	void OnDriverPhysicsAssetChanged(UTPawn UTP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40183], params.ptr, cast(void*)0);
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40185], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void OnPropertyChange(ScriptName PropName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40187], params.ptr, cast(void*)0);
	}
	int GetHealth(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40190], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	float GetCollisionDamageModifier(ScriptArray!(Actor.RigidBodyContactInfo)* ContactInfos)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Actor.RigidBodyContactInfo)*)params.ptr = *ContactInfos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40193], params.ptr, cast(void*)0);
		*ContactInfos = *cast(ScriptArray!(Actor.RigidBodyContactInfo)*)params.ptr;
		return *cast(float*)&params[12];
	}
	void InitializeMorphs()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40208], cast(void*)0, cast(void*)0);
	}
	void ReceivedHealthChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40211], cast(void*)0, cast(void*)0);
	}
	void ApplyMorphHeal(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40213], params.ptr, cast(void*)0);
	}
	void ApplyRandomMorphDamage(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40220], params.ptr, cast(void*)0);
	}
	UTGib SpawnGibVehicle(Vector SpawnLocation, Rotator SpawnRotation, StaticMesh TheMesh, Vector HitLocation, bool bSpinGib, Vector ImpulseDirection, ParticleSystem PS_OnBreak, ParticleSystem PS_Trail)
	{
		ubyte params[68];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(Rotator*)&params[12] = SpawnRotation;
		*cast(StaticMesh*)&params[24] = TheMesh;
		*cast(Vector*)&params[28] = HitLocation;
		*cast(bool*)&params[40] = bSpinGib;
		*cast(Vector*)&params[44] = ImpulseDirection;
		*cast(ParticleSystem*)&params[56] = PS_OnBreak;
		*cast(ParticleSystem*)&params[60] = PS_Trail;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40227], params.ptr, cast(void*)0);
		return *cast(UTGib*)&params[64];
	}
	void GetSVehicleDebug(ScriptArray!(ScriptString)* DebugInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *DebugInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40247], params.ptr, cast(void*)0);
		*DebugInfo = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	void OnExitVehicle(UTSeqAct_ExitVehicle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_ExitVehicle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40251], params.ptr, cast(void*)0);
	}
	void SetShieldActive(int SeatIndex, bool bActive)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40255], params.ptr, cast(void*)0);
	}
	void SetSeatStoragePawn(int SeatIndex, Pawn PawnToSit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Pawn*)&params[4] = PawnToSit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40258], params.ptr, cast(void*)0);
	}
	void SetMovementEffect(int SeatIndex, bool bSetActive, UTPawn UTP)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bSetActive;
		*cast(UTPawn*)&params[8] = UTP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40262], params.ptr, cast(void*)0);
	}
	void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40268], params.ptr, cast(void*)0);
	}
	bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40270], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptName GetVehicleKillStatName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40275], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	void DisplayHud(UTHUD pHUD, Canvas pCanvas, UObject.Vector2D HudPOS, int SeatIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTHUD*)params.ptr = pHUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.Vector2D*)&params[8] = HudPOS;
		*cast(int*)&params[16] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40278], params.ptr, cast(void*)0);
	}
	void DrawBarGraph(float X, float Y, float Width, float MaxWidth, float Height, Canvas DrawCanvas)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Width;
		*cast(float*)&params[12] = MaxWidth;
		*cast(float*)&params[16] = Height;
		*cast(Canvas*)&params[20] = DrawCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40299], params.ptr, cast(void*)0);
	}
	void DisplayExtraHud(UTHUD pHUD, Canvas pCanvas, UObject.Vector2D pos, float Width, float Height, int SIndex)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTHUD*)params.ptr = pHUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.Vector2D*)&params[8] = pos;
		*cast(float*)&params[16] = Width;
		*cast(float*)&params[20] = Height;
		*cast(int*)&params[24] = SIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40306], params.ptr, cast(void*)0);
	}
	void DisplaySeats(UTHUD pHUD, Canvas pCanvas, float PosX, float PosY, float Width, float Height, int SIndex)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTHUD*)params.ptr = pHUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(float*)&params[8] = PosX;
		*cast(float*)&params[12] = PosY;
		*cast(float*)&params[16] = Width;
		*cast(float*)&params[20] = Height;
		*cast(int*)&params[24] = SIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40313], params.ptr, cast(void*)0);
	}
	UObject.LinearColor GetSeatColor(int SeatIndex, bool bIsPlayersSeat)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bIsPlayersSeat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40326], params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)&params[8];
	}
	void ApplyWeaponEffects(int OverlayFlags, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OverlayFlags;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40332], params.ptr, cast(void*)0);
	}
	bool ShouldLeaveForCombat(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40342], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
