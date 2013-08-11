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
	public static immutable auto UTVEHICLE_UNSET_TEAM = 255;
	enum EAIVehiclePurpose : ubyte
	{
		AIP_Offensive = 0,
		AIP_Defensive = 1,
		AIP_Any = 2,
		AIP_MAX = 3,
	}
	struct MaterialList
	{
		public @property final auto ref ScriptArray!(MaterialInterface) Materials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)&this + 0); }
		private ubyte __Materials[12];
	}
	struct TimePosition
	{
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Time[4];
		public @property final auto ref Vector Position() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __Position[12];
	}
	public @property final bool bCanCarryFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x2) != 0; }
	public @property final bool bCanCarryFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x2; } return val; }
	public @property final bool bRequestedEntryWithFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x200000) != 0; }
	public @property final bool bRequestedEntryWithFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x200000; } return val; }
	public @property final bool bHasCustomEntryRadius() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x10) != 0; }
	public @property final bool bHasCustomEntryRadius(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x10; } return val; }
	public @property final auto ref UTVehicle NextVehicle() { return *cast(UTVehicle*)(cast(size_t)cast(void*)this + 2112); }
	public @property final auto ref float DefaultFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 2652); }
	public @property final bool bDropDetailWhenDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x10000) != 0; }
	public @property final bool bDropDetailWhenDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x10000; } return val; }
	public @property final bool bSpectatedView() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x200) != 0; }
	public @property final bool bSpectatedView(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x200; } return val; }
	public @property final auto ref ScriptArray!(SoundCue) HornSounds() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 2048); }
	public @property final auto ref ScriptArray!(MaterialInterface) TeamMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 2196); }
	public @property final auto ref ScriptArray!(UDKPawn.DistanceBasedParticleTemplate) BigExplosionTemplates() { return *cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)*)(cast(size_t)cast(void*)this + 2232); }
	public @property final auto ref ScriptArray!(UDKPawn.DistanceBasedParticleTemplate) DistanceTurretExplosionTemplates() { return *cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)*)(cast(size_t)cast(void*)this + 2312); }
	public @property final auto ref ScriptArray!(ParticleSystem) SpawnInTemplates() { return *cast(ScriptArray!(ParticleSystem)*)(cast(size_t)cast(void*)this + 2560); }
	public @property final auto ref ScriptArray!(UTVehicle.MaterialList) SpawnMaterialLists() { return *cast(ScriptArray!(UTVehicle.MaterialList)*)(cast(size_t)cast(void*)this + 2572); }
	public @property final auto ref ScriptArray!(MaterialInterface) OriginalMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 2608); }
	public @property final auto ref ScriptArray!(UTVehicle.TimePosition) OldPositions() { return *cast(ScriptArray!(UTVehicle.TimePosition)*)(cast(size_t)cast(void*)this + 2656); }
	public @property final auto ref ScriptArray!(SoundNodeWave) EnemyVehicleSound() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 2732); }
	public @property final auto ref ScriptArray!(SoundNodeWave) VehicleDestroyedSound() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 2744); }
	public @property final auto ref float LastEnemyWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2728); }
	public @property final auto ref StaticMesh ReferenceMovementMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 2724); }
	public @property final auto ref ParticleSystem DisabledTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 2716); }
	public @property final auto ref float TimeLastDisabled() { return *cast(float*)(cast(size_t)cast(void*)this + 2712); }
	public @property final auto ref float DisabledTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2708); }
	public @property final auto ref Vector OldCameraPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2696); }
	public @property final auto ref UTGib DeathCameraGib() { return *cast(UTGib*)(cast(size_t)cast(void*)this + 2692); }
	public @property final auto ref float MinCameraDistSq() { return *cast(float*)(cast(size_t)cast(void*)this + 2688); }
	public @property final auto ref float LookForwardDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2684); }
	public @property final auto ref Vector CameraOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2672); }
	public @property final auto ref float CameraLag() { return *cast(float*)(cast(size_t)cast(void*)this + 2668); }
	public @property final auto ref float CameraSmoothingFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 2648); }
	public @property final auto ref float OldCamPosZ() { return *cast(float*)(cast(size_t)cast(void*)this + 2644); }
	public @property final auto ref float SeatCameraScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2640); }
	public @property final auto ref float LastCollisionDamageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2636); }
	public @property final auto ref float CollisionDamageMult() { return *cast(float*)(cast(size_t)cast(void*)this + 2632); }
	public @property final auto ref MaterialInterface BurnOutMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 2624); }
	public @property final auto ref float SpawnInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2620); }
	public @property final auto ref UObject.InterpCurveFloat SpawnMaterialParameterCurve() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 2592); }
	public @property final auto ref ScriptName SpawnMaterialParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2584); }
	public @property final auto ref UIRoot.TextureCoordinates HudCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2544); }
	public @property final auto ref Texture2D HudIcons() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 2540); }
	public @property final auto ref Vector PassengerTeamBeaconOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2528); }
	public @property final auto ref PlayerReplicationInfo PassengerPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 2512); }
	public @property final auto ref Vector TeamBeaconOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2500); }
	public @property final auto ref float HealthPulseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2496); }
	public @property final auto ref int LastHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 2492); }
	public @property final auto ref UIRoot.TextureCoordinates DropOrbIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2476); }
	public @property final auto ref UIRoot.TextureCoordinates DropFlagIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2460); }
	public @property final auto ref UIRoot.TextureCoordinates EnterToolTipIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2444); }
	public @property final auto ref UIRoot.TextureCoordinates FlipToolTipIconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2428); }
	public @property final auto ref UIRoot.TextureCoordinates IconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 2412); }
	public @property final auto ref float MapSize() { return *cast(float*)(cast(size_t)cast(void*)this + 2408); }
	public @property final auto ref ScriptName FlagBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2400); }
	public @property final auto ref Rotator FlagRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 2388); }
	public @property final auto ref Vector FlagOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2376); }
	public @property final auto ref SoundCue BoostPadSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2372); }
	public @property final auto ref SoundCue SpawnOutSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2368); }
	public @property final auto ref SoundCue SpawnInSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2364); }
	public @property final auto ref float SpawnRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2360); }
	public @property final auto ref ScriptName BurnTimeParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2352); }
	public @property final auto ref SoundCue ExplosionSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2348); }
	public @property final auto ref float TurretExplosiveForce() { return *cast(float*)(cast(size_t)cast(void*)this + 2344); }
	public @property final auto ref StaticMesh DestroyedTurretTemplate() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 2340); }
	public @property final auto ref UTVehicleDeathPiece DestroyedTurret() { return *cast(UTVehicleDeathPiece*)(cast(size_t)cast(void*)this + 2336); }
	public @property final auto ref Vector TurretOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 2324); }
	public @property final auto ref ScriptName TurretSocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2304); }
	public @property final auto ref ScriptName TurretScaleControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2296); }
	public @property final auto ref float OuterExplosionShakeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2292); }
	public @property final auto ref float InnerExplosionShakeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2288); }
	public @property final auto ref CameraAnim DeathExplosionShake() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 2284); }
	public @property final auto ref float ExplosionInAirAngVel() { return *cast(float*)(cast(size_t)cast(void*)this + 2280); }
	public @property final auto ref float ExplosionMomentum() { return *cast(float*)(cast(size_t)cast(void*)this + 2276); }
	public @property final auto ref float ExplosionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2272); }
	public @property final auto ref float ExplosionDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 2268); }
	public @property final auto ref int DelayedBurnoutCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2264); }
	public @property final auto ref float DeadVehicleLifeSpan() { return *cast(float*)(cast(size_t)cast(void*)this + 2260); }
	public @property final auto ref float BurnOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2256); }
	public @property final auto ref ScriptName BigExplosionSocket() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 2248); }
	public @property final auto ref ParticleSystem SecondaryExplosion() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 2244); }
	public @property final auto ref ParticleSystem ExplosionTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 2228); }
	public @property final auto ref float MaxFireEffectDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2224); }
	public @property final auto ref float MaxImpactEffectDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2220); }
	public @property final auto ref ScriptClass ExplosionDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2216); }
	public @property final auto ref float DamageSmokeThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2212); }
	public @property final auto ref ScriptClass VehiclePieceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2208); }
	public @property final auto ref int ClientHealth() { return *cast(int*)(cast(size_t)cast(void*)this + 2192); }
	public @property final auto ref float TimeTilSecondaryVehicleExplosion() { return *cast(float*)(cast(size_t)cast(void*)this + 2188); }
	public @property final auto ref Emitter DeathExplosion() { return *cast(Emitter*)(cast(size_t)cast(void*)this + 2184); }
	public @property final auto ref float MaxExplosionLightDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 2180); }
	public @property final auto ref ScriptClass ExplosionLightClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2176); }
	public @property final auto ref ScriptClass VehicleDrowningDamType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2172); }
	public @property final auto ref float HUDExtent() { return *cast(float*)(cast(size_t)cast(void*)this + 2168); }
	public @property final auto ref float TeamBeaconPlayerInfoMaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
	public @property final auto ref UDKPlayerController.ObjectiveAnnouncementInfo NeedToPickUpAnnouncement() { return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)(cast(size_t)cast(void*)this + 2148); }
	public @property final auto ref ScriptString VehicleNameString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2136); }
	public @property final auto ref ScriptString VehiclePositionString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2124); }
	public @property final auto ref UTBot Reservation() { return *cast(UTBot*)(cast(size_t)cast(void*)this + 2120); }
	public @property final auto ref UTVehicleFactory ParentFactory() { return *cast(UTVehicleFactory*)(cast(size_t)cast(void*)this + 2116); }
	public @property final auto ref SoundCue StolenSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2108); }
	public @property final auto ref int StolenAnnouncementIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 2104); }
	public @property final auto ref SoundCue RanOverSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2100); }
	public @property final auto ref ScriptClass RanOverDamageType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 2096); }
	public @property final auto ref SoundCue LockedOnSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2092); }
	public @property final auto ref float ConsoleSteerScale() { return *cast(float*)(cast(size_t)cast(void*)this + 2088); }
	public @property final auto ref float LookSteerDeadZone() { return *cast(float*)(cast(size_t)cast(void*)this + 2084); }
	public @property final auto ref float LookSteerDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 2080); }
	public @property final auto ref float LookSteerSensitivity() { return *cast(float*)(cast(size_t)cast(void*)this + 2076); }
	public @property final auto ref float LeftStickDirDeadZone() { return *cast(float*)(cast(size_t)cast(void*)this + 2072); }
	public @property final auto ref int HornIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 2068); }
	public @property final auto ref float LastHornTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2064); }
	public @property final auto ref float HornAIRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 2060); }
	public @property final auto ref float MaxDesireability() { return *cast(float*)(cast(size_t)cast(void*)this + 2044); }
	public @property final auto ref SoundCue LinkedEndSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2040); }
	public @property final auto ref SoundCue LinkedToCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2036); }
	public @property final auto ref float LinkHealMult() { return *cast(float*)(cast(size_t)cast(void*)this + 2028); }
	public @property final auto ref float InitialSpawnDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 2024); }
	public @property final auto ref float RespawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2020); }
	public @property final auto ref float PlayerStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2016); }
	public @property final auto ref float VehicleLostTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2012); }
	public @property final auto ref PhysicalMaterial DefaultPhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 2004); }
	public @property final auto ref PhysicalMaterial DrivingPhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 2000); }
	public @property final auto ref float DeflectionReverseThresh() { return *cast(float*)(cast(size_t)cast(void*)this + 1996); }
	public @property final auto ref Actor NoPassengerObjective() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1992); }
	public @property final auto ref ubyte LinkedToCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1989); }
	public @property final auto ref UTVehicle.EAIVehiclePurpose AIPurpose() { return *cast(UTVehicle.EAIVehiclePurpose*)(cast(size_t)cast(void*)this + 1988); }
	public @property final bool bDriverHoldsFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x1) != 0; }
	public @property final bool bDriverHoldsFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x1; } return val; }
	public @property final auto ref SoundCue VehicleLockedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1984); }
	public @property final bool bIsNecrisVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x100) != 0; }
	public @property final bool bIsNecrisVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x100; } return val; }
	public @property final bool bHasEnemyVehicleSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x80) != 0; }
	public @property final bool bHasEnemyVehicleSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x80; } return val; }
	public @property final bool bStealthVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x40) != 0; }
	public @property final bool bStealthVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x40; } return val; }
	public @property final bool bShowDamageDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x20) != 0; }
	public @property final bool bShowDamageDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x20; } return val; }
	public @property final bool bAcceptTurretJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x10) != 0; }
	public @property final bool bAcceptTurretJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x10; } return val; }
	public @property final bool bIsConsoleTurning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x8) != 0; }
	public @property final bool bIsConsoleTurning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x8; } return val; }
	public @property final bool bStopDeathCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x4) != 0; }
	public @property final bool bStopDeathCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x4; } return val; }
	public @property final bool bCameraNeverHidesVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x2) != 0; }
	public @property final bool bCameraNeverHidesVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x2; } return val; }
	public @property final bool bFixedCamZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1980) & 0x1) != 0; }
	public @property final bool bFixedCamZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1980) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1980) &= ~0x1; } return val; }
	public @property final bool bNoFollowJumpZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x80000000) != 0; }
	public @property final bool bNoFollowJumpZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x80000000; } return val; }
	public @property final bool bLimitCameraZLookingUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x40000000) != 0; }
	public @property final bool bLimitCameraZLookingUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x40000000; } return val; }
	public @property final bool bNoZSmoothing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x20000000) != 0; }
	public @property final bool bNoZSmoothing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x20000000; } return val; }
	public @property final bool bRotateCameraUnderVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x10000000) != 0; }
	public @property final bool bRotateCameraUnderVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x10000000; } return val; }
	public @property final bool bReducedFallingCollisionDamage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x8000000) != 0; }
	public @property final bool bReducedFallingCollisionDamage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x8000000; } return val; }
	public @property final bool bPlayingSpawnEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x4000000) != 0; }
	public @property final bool bPlayingSpawnEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x4000000; } return val; }
	public @property final bool bPostRenderTraceSucceeded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x2000000) != 0; }
	public @property final bool bPostRenderTraceSucceeded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x2000000; } return val; }
	public @property final bool bHasTurretExplosion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x1000000) != 0; }
	public @property final bool bHasTurretExplosion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x1000000; } return val; }
	public @property final bool bRagdollDriverOnDarkwalkerHorn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x800000) != 0; }
	public @property final bool bRagdollDriverOnDarkwalkerHorn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x800000; } return val; }
	public @property final bool bInitializedVehicleEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x400000) != 0; }
	public @property final bool bInitializedVehicleEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x400000; } return val; }
	public @property final bool bFindGroundExit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x100000) != 0; }
	public @property final bool bFindGroundExit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x100000; } return val; }
	public @property final bool bUsingLookSteer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x80000) != 0; }
	public @property final bool bUsingLookSteer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x80000; } return val; }
	public @property final bool bLookSteerOnSimpleControls() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x40000) != 0; }
	public @property final bool bLookSteerOnSimpleControls(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x40000; } return val; }
	public @property final bool bLookSteerOnNormalControls() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x20000) != 0; }
	public @property final bool bLookSteerOnNormalControls(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x20000; } return val; }
	public @property final bool bHasBeenDriven() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x8000) != 0; }
	public @property final bool bHasBeenDriven(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x8000; } return val; }
	public @property final bool bDriverCastsShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x4000) != 0; }
	public @property final bool bDriverCastsShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x4000; } return val; }
	public @property final bool bDrawHealthOnHUD() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x2000) != 0; }
	public @property final bool bDrawHealthOnHUD(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x2000; } return val; }
	public @property final bool bShouldLeaveForCombat() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x1000) != 0; }
	public @property final bool bShouldLeaveForCombat(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x1000; } return val; }
	public @property final bool bNeverReset() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x800) != 0; }
	public @property final bool bNeverReset(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x800; } return val; }
	public @property final bool bHasWeaponBar() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x400) != 0; }
	public @property final bool bHasWeaponBar(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x400; } return val; }
	public @property final bool bShouldAutoCenterViewPitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x200) != 0; }
	public @property final bool bShouldAutoCenterViewPitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x200; } return val; }
	public @property final bool bStickDeflectionThrottle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x100) != 0; }
	public @property final bool bStickDeflectionThrottle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x100; } return val; }
	public @property final bool bOverrideAVRiLLocks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x80) != 0; }
	public @property final bool bOverrideAVRiLLocks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x80; } return val; }
	public @property final bool bMustBeUpright() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x40) != 0; }
	public @property final bool bMustBeUpright(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x40; } return val; }
	public @property final bool bKeyVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x20) != 0; }
	public @property final bool bKeyVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x20; } return val; }
	public @property final bool bEnteringUnlocks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x8) != 0; }
	public @property final bool bEnteringUnlocks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x8; } return val; }
	public @property final bool bValidLinkTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1976) & 0x4) != 0; }
	public @property final bool bValidLinkTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1976) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1976) &= ~0x4; } return val; }
	final bool TryToDrive(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36430], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool InCustomEntryRadius(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36452], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39358], cast(void*)0, cast(void*)0);
	}
	final void UpdateShadowSettings(bool bWantShadow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWantShadow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39360], params.ptr, cast(void*)0);
	}
	final void ReattachMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39364], cast(void*)0, cast(void*)0);
	}
	final void CreateDamageMaterialInstance()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39365], cast(void*)0, cast(void*)0);
	}
	final void UpdateLookSteerStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39366], cast(void*)0, cast(void*)0);
	}
	final void SetInputs(float InForward, float InStrafe, float InUp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = InForward;
		*cast(float*)&params[4] = InStrafe;
		*cast(float*)&params[8] = InUp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39368], params.ptr, cast(void*)0);
	}
	final void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39384], params.ptr, cast(void*)0);
	}
	final float GetChargePower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39386], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void PlaySpawnEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39388], cast(void*)0, cast(void*)0);
	}
	final void StopSpawnEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39391], cast(void*)0, cast(void*)0);
	}
	final void EjectSeat(int SeatIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39393], params.ptr, cast(void*)0);
	}
	final ScriptClass GetRanOverDamageType()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39396], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	final void DisplayWeaponBar(Canvas pCanvas, UTHUD HUD)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(UTHUD*)&params[4] = HUD;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39398], params.ptr, cast(void*)0);
	}
	final void DrawKillIcon(Canvas pCanvas, float ScreenX, float ScreenY, float HUDScaleX, float HUDScaleY)
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
	final void RenderMapIcon(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, UObject.LinearColor FinalColor)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(UObject.LinearColor*)&params[12] = FinalColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39411], params.ptr, cast(void*)0);
	}
	final float AdjustedStrength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39417], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool ContinueOnFoot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39419], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsDriverSeat(Vehicle TestSeatPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = TestSeatPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39426], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool RecommendCharge(UTBot B, Pawn Enemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = Enemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39429], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool CriticalChargeAttack(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39433], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void CreateVehicleEffect(int EffectIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EffectIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39436], params.ptr, cast(void*)0);
	}
	final void InitializeEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39439], cast(void*)0, cast(void*)0);
	}
	final void SetVehicleEffectParms(ScriptName TriggerName, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* PSC)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TriggerName;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[8] = PSC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39440], params.ptr, cast(void*)0);
	}
	final void TriggerVehicleEffect(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39444], params.ptr, cast(void*)0);
	}
	final void PlayVehicleSound(ScriptName SoundTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SoundTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39447], params.ptr, cast(void*)0);
	}
	final void PlayVehicleAnimation(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39450], params.ptr, cast(void*)0);
	}
	final void VehicleEvent(ScriptName EventTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39455], params.ptr, cast(void*)0);
	}
	final void EntryAnnouncement(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39457], params.ptr, cast(void*)0);
	}
	final Rotator ExitRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39460], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	final bool FindAutoExit(Pawn ExitingDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = ExitingDriver;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39462], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void RanInto(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39472], params.ptr, cast(void*)0);
	}
	final void PancakeOther(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39479], params.ptr, cast(void*)0);
	}
	final void TakeWaterDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39481], cast(void*)0, cast(void*)0);
	}
	final void DriverRadiusDamage(float DamageAmount, float DamageRadius, Controller EventInstigator, ScriptClass DamageType, float Momentum, Vector HitLocation, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[40];
		params[] = 0;
		*cast(float*)params.ptr = DamageAmount;
		*cast(float*)&params[4] = DamageRadius;
		*cast(Controller*)&params[8] = EventInstigator;
		*cast(ScriptClass*)&params[12] = DamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HitLocation;
		*cast(Actor*)&params[32] = DamageCauser;
		*cast(float*)&params[36] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39483], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39495], cast(void*)0, cast(void*)0);
	}
	final void SetTexturesToBeResident(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39500], params.ptr, cast(void*)0);
	}
	final bool DisableVehicle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39505], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void EnableVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39508], cast(void*)0, cast(void*)0);
	}
	final void TakeFireDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39509], cast(void*)0, cast(void*)0);
	}
	final int GetSeatIndexFromPrefix(ScriptString Prefix)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Prefix;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39511], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final void ServerSetConsoleTurning(bool bNewConsoleTurning)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewConsoleTurning;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39515], params.ptr, cast(void*)0);
	}
	final void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator* out_DeltaRot)
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
	final Rotator GetClampedViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39524], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	final bool ShouldClamp()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39532], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Rotator GetViewRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39534], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	final void WeaponRotationChanged(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39536], params.ptr, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39539], params.ptr, cast(void*)0);
	}
	final void SetKeyVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39543], cast(void*)0, cast(void*)0);
	}
	final void DrivingStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39544], cast(void*)0, cast(void*)0);
	}
	final void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39545], params.ptr, cast(void*)0);
	}
	final bool SeatAvailable(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39549], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool AnySeatAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39552], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final int GetSeatIndexForController(Controller ControllerToMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39555], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final Controller GetControllerForSeatIndex(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39559], params.ptr, cast(void*)0);
		return *cast(Controller*)&params[4];
	}
	final void ServerAdjacentSeat(int Direction, Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Direction;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39562], params.ptr, cast(void*)0);
	}
	final void ServerChangeSeat(int RequestedSeat)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39567], params.ptr, cast(void*)0);
	}
	final bool HasPriority(Controller first, Controller Second)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = first;
		*cast(Controller*)&params[4] = Second;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39569], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool ChangeSeat(Controller ControllerToMove, int RequestedSeat)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = ControllerToMove;
		*cast(int*)&params[4] = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39573], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39581], cast(void*)0, cast(void*)0);
	}
	final Controller GetCollisionDamageInstigator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39582], params.ptr, cast(void*)0);
		return *cast(Controller*)params.ptr;
	}
	final bool Died(Controller Killer, ScriptClass DamageType, Vector HitLocation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(ScriptClass*)&params[4] = DamageType;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39584], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final void BlowupVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39595], cast(void*)0, cast(void*)0);
	}
	final PlayerReplicationInfo GetSeatPRI(int SeatNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39598], params.ptr, cast(void*)0);
		return *cast(PlayerReplicationInfo*)&params[4];
	}
	final bool CanEnterVehicle(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39601], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool KickOutBot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39614], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void VehicleLocked(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39618], params.ptr, cast(void*)0);
	}
	final bool ShouldShowUseable(PlayerController PC, float Dist)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(float*)&params[4] = Dist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39621], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39626], params.ptr, cast(void*)0);
	}
	final float GetDisplayedHealth()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39648], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void RenderPassengerBeacons(PlayerController PC, Canvas pCanvas, UObject.LinearColor TeamColor, UObject.Color TextColor, UTWeapon Weap)
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
	final void PostRenderPassengerBeacon(PlayerController PC, Canvas pCanvas, UObject.LinearColor TeamColor, UObject.Color TextColor, UTWeapon Weap, PlayerReplicationInfo InPassengerPRI, Vector InPassengerTeamBeaconOffset)
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
	final void SetTeamNum(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39671], params.ptr, cast(void*)0);
	}
	final void TeamChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39673], cast(void*)0, cast(void*)0);
	}
	final void TeamChanged_VehicleEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39675], cast(void*)0, cast(void*)0);
	}
	final bool Dodge(Actor.EDoubleClickDir DoubleClickMove)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39680], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void IncomingMissile(Projectile P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39683], params.ptr, cast(void*)0);
	}
	final void ShootMissile(Projectile P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39686], params.ptr, cast(void*)0);
	}
	final void SendLockOnMessage(int Switch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39688], params.ptr, cast(void*)0);
	}
	final void LockOnWarning(UDKProjectile IncomingMissile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKProjectile*)params.ptr = IncomingMissile;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39693], params.ptr, cast(void*)0);
	}
	final bool TooCloseToAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39695], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CheckTurretPitchLimit(int NeededPitch, int SeatIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = NeededPitch;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39701], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void PlayHorn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39706], cast(void*)0, cast(void*)0);
	}
	final bool DriverLeave(bool bForceLeave)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceLeave;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39713], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void UpdateControllerOnPossess(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39715], params.ptr, cast(void*)0);
	}
	final int NumPassengers()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39717], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final UTVehicle GetMoveTargetFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39721], params.ptr, cast(void*)0);
		return *cast(UTVehicle*)&params[4];
	}
	final void HandleEnteringFlag(UTPlayerReplicationInfo EnteringPRI, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = EnteringPRI;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39724], params.ptr, cast(void*)0);
	}
	final bool DriverEnter(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39729], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39734], params.ptr, cast(void*)0);
	}
	final void AttachFlag(UTCarriedObject FlagActor, Pawn NewDriver)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTCarriedObject*)params.ptr = FlagActor;
		*cast(Pawn*)&params[4] = NewDriver;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39738], params.ptr, cast(void*)0);
	}
	final void DriverLeft()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39741], cast(void*)0, cast(void*)0);
	}
	final int GetFirstAvailableSeat(bool bSeatMustAllowFlag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bSeatMustAllowFlag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39744], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final bool PassengerEnter(Pawn P, int SeatIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39748], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void PassengerLeave(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39755], params.ptr, cast(void*)0);
	}
	final void CheckReset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39757], cast(void*)0, cast(void*)0);
	}
	final bool Occupied()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39760], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool OpenPositionFor(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39763], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float BotDesireability(UTSquadAI S, int TeamIndex, Actor Objective)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = S;
		*cast(int*)&params[4] = TeamIndex;
		*cast(Actor*)&params[8] = Objective;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39769], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float ReservationCostMultiplier(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39776], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final bool SpokenFor(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39779], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39783], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SetReservation(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39786], params.ptr, cast(void*)0);
	}
	final bool TeamLink(int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39788], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool AllowLinkThroughOwnedActor(Actor OwnedActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = OwnedActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39791], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool HealDamage(int Amount, Controller Healer, ScriptClass DamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		*cast(Controller*)&params[4] = Healer;
		*cast(ScriptClass*)&params[8] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39794], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void IncrementLinkedToCount()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39799], cast(void*)0, cast(void*)0);
	}
	final void DecrementLinkedToCount()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39800], cast(void*)0, cast(void*)0);
	}
	final void StartLinkedEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39801], cast(void*)0, cast(void*)0);
	}
	final void StopLinkedEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39806], cast(void*)0, cast(void*)0);
	}
	final void PlayHit(float Damage, Controller InstigatedBy, Vector HitLocation, ScriptClass DamageType, Vector Momentum, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[64];
		params[] = 0;
		*cast(float*)params.ptr = Damage;
		*cast(Controller*)&params[4] = InstigatedBy;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(ScriptClass*)&params[20] = DamageType;
		*cast(Vector*)&params[24] = Momentum;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39810], params.ptr, cast(void*)0);
	}
	final void PlayTakeHitEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39822], cast(void*)0, cast(void*)0);
	}
	final void NotifyTakeHit(Controller InstigatedBy, Vector HitLocation, int Damage, ScriptClass DamageType, Vector Momentum)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = Damage;
		*cast(ScriptClass*)&params[20] = DamageType;
		*cast(Vector*)&params[24] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39824], params.ptr, cast(void*)0);
	}
	final void TakeDamage(int Damage, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = Damage;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39831], params.ptr, cast(void*)0);
	}
	final Actor GetHomingTarget(UTProjectile Seeker, Controller InstigatedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTProjectile*)params.ptr = Seeker;
		*cast(Controller*)&params[4] = InstigatedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39843], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[8];
	}
	final bool ImportantVehicle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39847], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void InitializeSeats()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39849], cast(void*)0, cast(void*)0);
	}
	final void PreCacheSeatNames()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39853], cast(void*)0, cast(void*)0);
	}
	final void InitializeTurrets()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39855], cast(void*)0, cast(void*)0);
	}
	final void PossessedBy(Controller C, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39862], params.ptr, cast(void*)0);
	}
	final void SetFiringMode(Weapon Weap, ubyte FiringModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = Weap;
		params[4] = FiringModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39865], params.ptr, cast(void*)0);
	}
	final void ClearFlashCount(Weapon Who)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39868], params.ptr, cast(void*)0);
	}
	final void IncrementFlashCount(Weapon Who, ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39871], params.ptr, cast(void*)0);
	}
	final void SetFlashLocation(Weapon Who, ubyte FireModeNum, Vector NewLoc)
	{
		ubyte params[17];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		params[4] = FireModeNum;
		*cast(Vector*)&params[8] = NewLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39875], params.ptr, cast(void*)0);
	}
	final void ClearFlashLocation(Weapon Who)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = Who;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39880], params.ptr, cast(void*)0);
	}
	final void GetBarrelLocationAndRotation(int SeatIndex, Vector* SocketLocation, Rotator* SocketRotation)
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
	final Vector GetEffectLocation(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39887], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final Vector GetPhysicalFireStartLoc(UTWeapon ForWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = ForWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39891], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final Rotator GetWeaponAim(UTVehicleWeapon VWeapon)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTVehicleWeapon*)params.ptr = VWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39895], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[4];
	}
	final bool OverrideBeginFire(ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39919], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool OverrideEndFire(ubyte FireModeNum)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39922], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void GetWeaponViewAxes(UTWeapon WhichWeapon, Vector* XAxis, Vector* YAxis, Vector* ZAxis)
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
	final void CauseMuzzleFlashLight(int SeatIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39930], params.ptr, cast(void*)0);
	}
	final void WeaponFired(Weapon InWeapon, bool bViaReplication, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		*cast(Vector*)&params[8] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39932], params.ptr, cast(void*)0);
	}
	final void VehicleWeaponFired(bool bViaReplication, Vector HitLocation, int SeatIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bViaReplication;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39936], params.ptr, cast(void*)0);
	}
	final void WeaponStoppedFiring(Weapon InWeapon, bool bViaReplication)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(bool*)&params[4] = bViaReplication;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39940], params.ptr, cast(void*)0);
	}
	final void VehicleWeaponStoppedFiring(bool bViaReplication, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bViaReplication;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39943], params.ptr, cast(void*)0);
	}
	final void VehicleWeaponFireEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39949], params.ptr, cast(void*)0);
	}
	final Actor FindWeaponHitNormal(Vector* HitLocation, Vector* HitNormal, Vector End, Vector Start, Actor.TraceHitInfo* HitInfo)
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
	final void VehicleWeaponImpactEffects(Vector HitLocation, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(int*)&params[12] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39959], params.ptr, cast(void*)0);
	}
	final void SpawnImpactEmitter(Vector HitLocation, Vector HitNormal, UDKPawn.MaterialImpactEffect* ImpactEffect, int SeatIndex)
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
	final void VehicleAdjustFlashCount(int SeatIndex, ubyte FireModeNum, bool bClear)
	{
		ubyte params[9];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		params[4] = FireModeNum;
		*cast(bool*)&params[8] = bClear;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39982], params.ptr, cast(void*)0);
	}
	final void VehicleAdjustFlashLocation(int SeatIndex, ubyte FireModeNum, Vector NewLocation, bool bClear)
	{
		ubyte params[21];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		params[4] = FireModeNum;
		*cast(Vector*)&params[8] = NewLocation;
		*cast(bool*)&params[20] = bClear;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39986], params.ptr, cast(void*)0);
	}
	final void FindGoodEndView(PlayerController PC, Rotator* GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = *GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39991], params.ptr, cast(void*)0);
		*GoodRotation = *cast(Rotator*)&params[4];
	}
	final bool CalcCamera(float DeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
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
	final Vector GetCameraFocus(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40008], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final Vector GetCameraStart(int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40015], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final float LimitCameraZ(float CurrentCamZ, float OriginalCamZ, int SeatIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = CurrentCamZ;
		*cast(float*)&params[4] = OriginalCamZ;
		*cast(int*)&params[8] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40026], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final void VehicleCalcCamera(float DeltaTime, int SeatIndex, Vector* out_CamLoc, Rotator* out_CamRot, Vector* CamStart, bool bPivotOnly)
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
	final void AdjustCameraScale(bool bMoveCameraIn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bMoveCameraIn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40060], params.ptr, cast(void*)0);
	}
	final void StartBurnOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40062], cast(void*)0, cast(void*)0);
	}
	final void TurnOffShadows()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40065], cast(void*)0, cast(void*)0);
	}
	final void DisableDamageSmoke()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40066], cast(void*)0, cast(void*)0);
	}
	final void DisableCollision()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40067], cast(void*)0, cast(void*)0);
	}
	final void SetBurnOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40068], cast(void*)0, cast(void*)0);
	}
	final bool ShouldSpawnExplosionLight(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40075], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final void RBPenetrationDestroy()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40081], cast(void*)0, cast(void*)0);
	}
	final void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComponent, Actor.CollisionImpactData* Collision, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = *Collision;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40149], params.ptr, cast(void*)0);
		*Collision = *cast(Actor.CollisionImpactData*)&params[8];
	}
	final void TurretExplosion()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40169], cast(void*)0, cast(void*)0);
	}
	final void StopVehicleSounds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40174], cast(void*)0, cast(void*)0);
	}
	final void CheckDamageSmoke()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40176], cast(void*)0, cast(void*)0);
	}
	final void AttachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40177], params.ptr, cast(void*)0);
	}
	final void SitDriver(UTPawn UTP, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40180], params.ptr, cast(void*)0);
	}
	final void OnDriverPhysicsAssetChanged(UTPawn UTP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40183], params.ptr, cast(void*)0);
	}
	final ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40185], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void OnPropertyChange(ScriptName PropName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40187], params.ptr, cast(void*)0);
	}
	final int GetHealth(int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40190], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final float GetCollisionDamageModifier(ScriptArray!(Actor.RigidBodyContactInfo)* ContactInfos)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Actor.RigidBodyContactInfo)*)params.ptr = *ContactInfos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40193], params.ptr, cast(void*)0);
		*ContactInfos = *cast(ScriptArray!(Actor.RigidBodyContactInfo)*)params.ptr;
		return *cast(float*)&params[12];
	}
	final void InitializeMorphs()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40208], cast(void*)0, cast(void*)0);
	}
	final void ReceivedHealthChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40211], cast(void*)0, cast(void*)0);
	}
	final void ApplyMorphHeal(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40213], params.ptr, cast(void*)0);
	}
	final void ApplyRandomMorphDamage(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40220], params.ptr, cast(void*)0);
	}
	final UTGib SpawnGibVehicle(Vector SpawnLocation, Rotator SpawnRotation, StaticMesh TheMesh, Vector HitLocation, bool bSpinGib, Vector ImpulseDirection, ParticleSystem PS_OnBreak, ParticleSystem PS_Trail)
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
	final void GetSVehicleDebug(ScriptArray!(ScriptString)* DebugInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *DebugInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40247], params.ptr, cast(void*)0);
		*DebugInfo = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	final void OnExitVehicle(UTSeqAct_ExitVehicle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_ExitVehicle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40251], params.ptr, cast(void*)0);
	}
	final void SetShieldActive(int SeatIndex, bool bActive)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40255], params.ptr, cast(void*)0);
	}
	final void SetSeatStoragePawn(int SeatIndex, Pawn PawnToSit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(Pawn*)&params[4] = PawnToSit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40258], params.ptr, cast(void*)0);
	}
	final void SetMovementEffect(int SeatIndex, bool bSetActive, UTPawn UTP)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bSetActive;
		*cast(UTPawn*)&params[8] = UTP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40262], params.ptr, cast(void*)0);
	}
	final void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40268], params.ptr, cast(void*)0);
	}
	final bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40270], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ScriptName GetVehicleKillStatName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40275], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	final void DisplayHud(UTHUD HUD, Canvas pCanvas, UObject.Vector2D HudPOS, int SeatIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTHUD*)params.ptr = HUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.Vector2D*)&params[8] = HudPOS;
		*cast(int*)&params[16] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40278], params.ptr, cast(void*)0);
	}
	final void DrawBarGraph(float X, float Y, float Width, float MaxWidth, float Height, Canvas DrawCanvas)
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
	final void DisplayExtraHud(UTHUD HUD, Canvas pCanvas, UObject.Vector2D pos, float Width, float Height, int SIndex)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTHUD*)params.ptr = HUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UObject.Vector2D*)&params[8] = pos;
		*cast(float*)&params[16] = Width;
		*cast(float*)&params[20] = Height;
		*cast(int*)&params[24] = SIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40306], params.ptr, cast(void*)0);
	}
	final void DisplaySeats(UTHUD HUD, Canvas pCanvas, float PosX, float PosY, float Width, float Height, int SIndex)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTHUD*)params.ptr = HUD;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(float*)&params[8] = PosX;
		*cast(float*)&params[12] = PosY;
		*cast(float*)&params[16] = Width;
		*cast(float*)&params[20] = Height;
		*cast(int*)&params[24] = SIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40313], params.ptr, cast(void*)0);
	}
	final UObject.LinearColor GetSeatColor(int SeatIndex, bool bIsPlayersSeat)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = SeatIndex;
		*cast(bool*)&params[4] = bIsPlayersSeat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40326], params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)&params[8];
	}
	final void ApplyWeaponEffects(int OverlayFlags, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OverlayFlags;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40332], params.ptr, cast(void*)0);
	}
	final bool ShouldLeaveForCombat(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40342], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
