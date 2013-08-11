module UnrealScript.Engine.Actor;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FluidSurfaceActor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.SequenceOp;
import UnrealScript.Engine.SeqAct_ChangeCollision;
import UnrealScript.Engine.SVehicle;
import UnrealScript.Engine.SeqAct_AttachToActor;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.FaceFXAsset;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.SeqAct_ToggleHidden;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.SeqAct_Destroy;
import UnrealScript.Engine.InterpGroup;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.SkelControlLookAt;
import UnrealScript.Engine.SeqAct_SetBlockRigidBody;
import UnrealScript.Engine.SeqAct_SetVelocity;
import UnrealScript.Engine.SeqAct_SetPhysics;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.SeqAct_Teleport;
import UnrealScript.Engine.Teleporter;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SeqAct_ModifyHealth;
import UnrealScript.Engine.AnimNotify_Trails;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.RB_BodyInstance;
import UnrealScript.Engine.RB_ConstraintInstance;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.SeqAct_Interp;
import UnrealScript.Engine.AnimNotify_ForceField;
import UnrealScript.Core.Property;
import UnrealScript.Engine.InterpGroupInst;
import UnrealScript.Engine.AnimNotify_PlayParticleEffect;
import UnrealScript.Engine.RB_ConstraintSetup;

extern(C++) interface Actor : UObject
{
	public static immutable auto MINFLOORZ = 0.7;
	public static immutable auto ACTORMAXSTEPHEIGHT = 35.0;
	public static immutable auto RBSTATE_LINVELSCALE = 10.0;
	public static immutable auto RBSTATE_ANGVELSCALE = 1000.0;
	public static immutable auto RB_None = 0x00;
	public static immutable auto RB_NeedsUpdate = 0x01;
	public static immutable auto RB_Sleeping = 0x02;
	public static immutable auto REP_RBLOCATION_ERROR_TOLERANCE_SQ = 16.0f;
	public static immutable auto TRACEFLAG_Blocking = 8;
	public static immutable auto TRACEFLAG_SkipMovers = 4;
	public static immutable auto TRACEFLAG_PhysicsVolumes = 2;
	public static immutable auto TRACEFLAG_Bullet = 1;
	enum EPhysics : ubyte
	{
		PHYS_None = 0,
		PHYS_Walking = 1,
		PHYS_Falling = 2,
		PHYS_Swimming = 3,
		PHYS_Flying = 4,
		PHYS_Rotating = 5,
		PHYS_Projectile = 6,
		PHYS_Interpolating = 7,
		PHYS_Spider = 8,
		PHYS_Ladder = 9,
		PHYS_RigidBody = 10,
		PHYS_SoftBody = 11,
		PHYS_NavMeshWalking = 12,
		PHYS_Skiing = 13,
		PHYS_Unused = 14,
		PHYS_Custom = 15,
		PHYS_MAX = 16,
	}
	enum EMoveDir : ubyte
	{
		MD_Stationary = 0,
		MD_Forward = 1,
		MD_Backward = 2,
		MD_Left = 3,
		MD_Right = 4,
		MD_Up = 5,
		MD_Down = 6,
		MD_MAX = 7,
	}
	enum ECollisionType : ubyte
	{
		COLLIDE_CustomDefault = 0,
		COLLIDE_NoCollision = 1,
		COLLIDE_BlockAll = 2,
		COLLIDE_BlockWeapons = 3,
		COLLIDE_BlockVehicles = 4,
		COLLIDE_TouchAll = 5,
		COLLIDE_TouchWeapons = 6,
		COLLIDE_BlockAllButWeapons = 7,
		COLLIDE_TouchAllButWeapons = 8,
		COLLIDE_BlockWeaponsKickable = 9,
		COLLIDE_MAX = 10,
	}
	enum ETravelType : ubyte
	{
		TRAVEL_Absolute = 0,
		TRAVEL_Partial = 1,
		TRAVEL_Relative = 2,
		TRAVEL_MAX = 3,
	}
	enum EDoubleClickDir : ubyte
	{
		DCLICK_None = 0,
		DCLICK_Left = 1,
		DCLICK_Right = 2,
		DCLICK_Forward = 3,
		DCLICK_Back = 4,
		DCLICK_Active = 5,
		DCLICK_Done = 6,
		DCLICK_MAX = 7,
	}
	enum ENetRole : ubyte
	{
		ROLE_None = 0,
		ROLE_SimulatedProxy = 1,
		ROLE_AutonomousProxy = 2,
		ROLE_Authority = 3,
		ROLE_MAX = 4,
	}
	struct AnimSlotDesc
	{
		public @property final auto ref ScriptName SlotName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __SlotName[8];
		public @property final auto ref int NumChannels() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __NumChannels[4];
	}
	struct RigidBodyState
	{
		public @property final auto ref ubyte bNewData() { return *cast(ubyte*)(cast(size_t)&this + 56); }
		private ubyte __bNewData[1];
		public @property final auto ref Vector AngVel() { return *cast(Vector*)(cast(size_t)&this + 44); }
		private ubyte __AngVel[12];
		public @property final auto ref Vector LinVel() { return *cast(Vector*)(cast(size_t)&this + 32); }
		private ubyte __LinVel[12];
		public @property final auto ref UObject.Quat Quaternion() { return *cast(UObject.Quat*)(cast(size_t)&this + 16); }
		private ubyte __Quaternion[16];
		public @property final auto ref Vector Position() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __Position[12];
	}
	struct RigidBodyContactInfo
	{
		public @property final auto ref PhysicalMaterial PhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)&this + 52); }
		private ubyte __PhysMaterial[4];
		public @property final auto ref Vector ContactVelocity() { return *cast(Vector*)(cast(size_t)&this + 28); }
		private ubyte __ContactVelocity[12];
		public @property final auto ref float ContactPenetration() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __ContactPenetration[4];
		public @property final auto ref Vector ContactNormal() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __ContactNormal[12];
		public @property final auto ref Vector ContactPosition() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __ContactPosition[12];
	}
	struct CollisionImpactData
	{
		public @property final auto ref ScriptArray!(Actor.RigidBodyContactInfo) ContactInfos() { return *cast(ScriptArray!(Actor.RigidBodyContactInfo)*)(cast(size_t)&this + 0); }
		private ubyte __ContactInfos[12];
		public @property final auto ref Vector TotalFrictionForceVector() { return *cast(Vector*)(cast(size_t)&this + 24); }
		private ubyte __TotalFrictionForceVector[12];
		public @property final auto ref Vector TotalNormalForceVector() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __TotalNormalForceVector[12];
	}
	struct PhysEffectInfo
	{
		public @property final auto ref SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 12); }
		private ubyte __Sound[4];
		public @property final auto ref ParticleSystem Effect() { return *cast(ParticleSystem*)(cast(size_t)&this + 8); }
		private ubyte __Effect[4];
		public @property final auto ref float ReFireDelay() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __ReFireDelay[4];
		public @property final auto ref float Threshold() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Threshold[4];
	}
	struct ActorReference
	{
		// WARNING: Property 'Guid' has the same name as a defined type!
		// WARNING: Property 'Actor' has the same name as a defined type!
	}
	struct NavReference
	{
		// WARNING: Property 'Guid' has the same name as a defined type!
		public @property final auto ref NavigationPoint Nav() { return *cast(NavigationPoint*)(cast(size_t)&this + 0); }
		private ubyte __Nav[4];
	}
	struct BasedPosition
	{
		public @property final auto ref Vector CachedTransPosition() { return *cast(Vector*)(cast(size_t)&this + 40); }
		private ubyte __CachedTransPosition[12];
		public @property final auto ref Rotator CachedBaseRotation() { return *cast(Rotator*)(cast(size_t)&this + 28); }
		private ubyte __CachedBaseRotation[12];
		public @property final auto ref Vector CachedBaseLocation() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __CachedBaseLocation[12];
		public @property final auto ref Vector Position() { return *cast(Vector*)(cast(size_t)&this + 4); }
		private ubyte __Position[12];
		public @property final auto ref Actor Base() { return *cast(Actor*)(cast(size_t)&this + 0); }
		private ubyte __Base[4];
	}
	struct TraceHitInfo
	{
		// WARNING: Property 'Material' has the same name as a defined type!
		public @property final auto ref PhysicalMaterial PhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)&this + 4); }
		private ubyte __PhysMaterial[4];
		public @property final auto ref int Item() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __Item[4];
		public @property final auto ref int LevelIndex() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __LevelIndex[4];
		public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)&this + 16); }
		private ubyte __BoneName[8];
	}
	struct ImpactInfo
	{
		public @property final auto ref Actor HitActor() { return *cast(Actor*)(cast(size_t)&this + 0); }
		private ubyte __HitActor[4];
		public @property final auto ref Vector HitLocation() { return *cast(Vector*)(cast(size_t)&this + 4); }
		private ubyte __HitLocation[12];
		public @property final auto ref Vector HitNormal() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __HitNormal[12];
		public @property final auto ref Vector RayDir() { return *cast(Vector*)(cast(size_t)&this + 28); }
		private ubyte __RayDir[12];
		public @property final auto ref Vector StartTrace() { return *cast(Vector*)(cast(size_t)&this + 40); }
		private ubyte __StartTrace[12];
		public @property final auto ref Actor.TraceHitInfo HitInfo() { return *cast(Actor.TraceHitInfo*)(cast(size_t)&this + 52); }
		private ubyte __HitInfo[28];
	}
	struct AnimSlotInfo
	{
		public @property final auto ref ScriptName SlotName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __SlotName[8];
		public @property final auto ref ScriptArray!(float) ChannelWeights() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 8); }
		private ubyte __ChannelWeights[12];
	}
	struct TimerData
	{
		public @property final bool bLoop() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bLoop[4];
		public @property final bool bPaused() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bPaused[4];
		public @property final auto ref ScriptName FuncName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __FuncName[8];
		public @property final auto ref float Rate() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Rate[4];
		public @property final auto ref float Count() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __Count[4];
		public @property final auto ref float TimerTimeDilation() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __TimerTimeDilation[4];
		public @property final auto ref UObject TimerObj() { return *cast(UObject*)(cast(size_t)&this + 24); }
		private ubyte __TimerObj[4];
	}
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) Components() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 60); }
	public @property final bool bGameRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x10000) != 0; }
	public @property final bool bGameRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x10000; } return val; }
	public @property final bool bStatic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1) != 0; }
	public @property final bool bStatic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1; } return val; }
	// WARNING: Property 'WorldInfo' has the same name as a defined type!
	public @property final bool bNoDelete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x4) != 0; }
	public @property final bool bNoDelete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x4; } return val; }
	public @property final bool bScriptInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x800000) != 0; }
	public @property final bool bScriptInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x800000; } return val; }
	public @property final auto ref ScriptName InitialState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 268); }
	public @property final bool bProjTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x80000000) != 0; }
	public @property final bool bProjTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x80000000; } return val; }
	public @property final bool bBlockActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x40000000) != 0; }
	public @property final bool bBlockActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x40000000; } return val; }
	public @property final auto ref Pawn Instigator() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 240); }
	public @property final bool bHurtEntry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x8000) != 0; }
	public @property final bool bHurtEntry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x8000; } return val; }
	public @property final bool bWorldGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x80) != 0; }
	public @property final bool bWorldGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x80; } return val; }
	public @property final bool bCanBeDamaged() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x80000) != 0; }
	public @property final bool bCanBeDamaged(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x80000; } return val; }
	public @property final auto ref ScriptArray!(SequenceEvent) GeneratedEvents() { return *cast(ScriptArray!(SequenceEvent)*)(cast(size_t)cast(void*)this + 452); }
	public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref Rotator Rotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 84); }
	public @property final bool bDeleteMe() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x8) != 0; }
	public @property final bool bDeleteMe(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x8; } return val; }
	public @property final auto ref Actor.ENetRole Role() { return *cast(Actor.ENetRole*)(cast(size_t)cast(void*)this + 138); }
	public @property final auto ref Actor.ENetRole RemoteRole() { return *cast(Actor.ENetRole*)(cast(size_t)cast(void*)this + 137); }
	public @property final bool bTearOff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x4000000) != 0; }
	public @property final bool bTearOff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x4000000; } return val; }
	// WARNING: Property 'PhysicsVolume' has the same name as a defined type!
	public @property final auto ref Actor Base() { return *cast(Actor*)(cast(size_t)cast(void*)this + 148); }
	public @property final bool bBounce() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x200) != 0; }
	public @property final bool bBounce(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x200; } return val; }
	public @property final bool bHardAttach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x400) != 0; }
	public @property final bool bHardAttach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x400; } return val; }
	public @property final auto ref Vector RelativeLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref Rotator RelativeRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref ScriptName BaseBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref Vector Velocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref Vector Acceleration() { return *cast(Vector*)(cast(size_t)cast(void*)this + 340); }
	public @property final bool bCollideActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x8000000) != 0; }
	public @property final bool bCollideActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x8000000; } return val; }
	public @property final bool bCollideWorld() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x10000000) != 0; }
	public @property final bool bCollideWorld(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x10000000; } return val; }
	public @property final auto ref Actor Owner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref Actor.EPhysics Physics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 136); }
	public @property final bool bAllowFluidSurfaceInteraction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x10000000) != 0; }
	public @property final bool bAllowFluidSurfaceInteraction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x10000000; } return val; }
	public @property final bool bDebugEffectIsRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x8000000) != 0; }
	public @property final bool bDebugEffectIsRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x8000000; } return val; }
	public @property final auto ref float LastRenderTime() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref ScriptArray!(SeqAct_Latent) LatentActions() { return *cast(ScriptArray!(SeqAct_Latent)*)(cast(size_t)cast(void*)this + 464); }
	public @property final auto ref ScriptArray!(Actor) Attached() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 376); }
	public @property final bool bAlwaysRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x200000) != 0; }
	public @property final bool bAlwaysRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x200000; } return val; }
	public @property final auto ref float NetUpdateFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
	public @property final bool bForceNetUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x100) != 0; }
	public @property final bool bForceNetUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x100; } return val; }
	public @property final bool bHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x2) != 0; }
	public @property final bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x2; } return val; }
	public @property final bool bUpdateSimulatedPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x2000000) != 0; }
	public @property final bool bUpdateSimulatedPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x2000000; } return val; }
	public @property final bool bNetDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x100000) != 0; }
	public @property final bool bNetDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x100000; } return val; }
	public @property final bool bOnlyDirtyReplication() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x8000000) != 0; }
	public @property final bool bOnlyDirtyReplication(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x8000000; } return val; }
	public @property final bool bCanBeFrictionedTo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x4000) != 0; }
	public @property final bool bCanBeFrictionedTo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x4000; } return val; }
	public @property final bool bCanBeAdheredTo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x2000) != 0; }
	public @property final bool bCanBeAdheredTo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x2000; } return val; }
	public @property final bool bSkipActorPropertyReplication() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1000000) != 0; }
	public @property final bool bSkipActorPropertyReplication(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1000000; } return val; }
	public @property final bool bNetInitial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x800) != 0; }
	public @property final bool bNetInitial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x800; } return val; }
	public @property final bool bReplicateMovement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x800000) != 0; }
	public @property final bool bReplicateMovement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x800000; } return val; }
	public @property final bool bReplicateInstigator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x400000) != 0; }
	public @property final bool bReplicateInstigator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x400000; } return val; }
	public @property final bool bNetOwner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1000) != 0; }
	public @property final bool bNetOwner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1000; } return val; }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) AllComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref float DrawScale() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref Vector DrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref Vector PrePivot() { return *cast(Vector*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref UObject.Color EditorIconColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref UObject.RenderCommandFence DetachFence() { return *cast(UObject.RenderCommandFence*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float CustomTimeDilation() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref Actor.ECollisionType CollisionType() { return *cast(Actor.ECollisionType*)(cast(size_t)cast(void*)this + 139); }
	public @property final auto ref Actor.ECollisionType ReplicatedCollisionType() { return *cast(Actor.ECollisionType*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref UObject.ETickingGroup TickGroup() { return *cast(UObject.ETickingGroup*)(cast(size_t)cast(void*)this + 141); }
	public @property final auto ref ScriptArray!(Actor.TimerData) Timers() { return *cast(ScriptArray!(Actor.TimerData)*)(cast(size_t)cast(void*)this + 152); }
	public @property final bool bTicked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x10) != 0; }
	public @property final bool bTicked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x10; } return val; }
	public @property final bool bOnlyOwnerSee() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x20) != 0; }
	public @property final bool bOnlyOwnerSee(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x20; } return val; }
	public @property final bool bTickIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x40) != 0; }
	public @property final bool bTickIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x40; } return val; }
	public @property final bool bIgnoreRigidBodyPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x100) != 0; }
	public @property final bool bIgnoreRigidBodyPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x100; } return val; }
	public @property final bool bOrientOnSlope() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x200) != 0; }
	public @property final bool bOrientOnSlope(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x200; } return val; }
	public @property final bool bIgnoreEncroachers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x400) != 0; }
	public @property final bool bIgnoreEncroachers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x400; } return val; }
	public @property final bool bPushedByEncroachers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x800) != 0; }
	public @property final bool bPushedByEncroachers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x800; } return val; }
	public @property final bool bDestroyedByInterpActor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1000) != 0; }
	public @property final bool bDestroyedByInterpActor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1000; } return val; }
	public @property final bool bRouteBeginPlayEvenIfStatic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x2000) != 0; }
	public @property final bool bRouteBeginPlayEvenIfStatic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x2000; } return val; }
	public @property final bool bIsMoving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x4000) != 0; }
	public @property final bool bIsMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x4000; } return val; }
	public @property final bool bAlwaysEncroachCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x8000) != 0; }
	public @property final bool bAlwaysEncroachCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x8000; } return val; }
	public @property final bool bHasAlternateTargetLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x10000) != 0; }
	public @property final bool bHasAlternateTargetLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x10000; } return val; }
	public @property final bool bCanStepUpOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x20000) != 0; }
	public @property final bool bCanStepUpOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x20000; } return val; }
	public @property final bool bNetTemporary() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x40000) != 0; }
	public @property final bool bNetTemporary(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x40000; } return val; }
	public @property final bool bOnlyRelevantToOwner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x80000) != 0; }
	public @property final bool bOnlyRelevantToOwner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x80000; } return val; }
	public @property final bool bDemoRecording() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x20000000) != 0; }
	public @property final bool bDemoRecording(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x20000000; } return val; }
	public @property final bool bDemoOwner() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x40000000) != 0; }
	public @property final bool bDemoOwner(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x40000000; } return val; }
	public @property final bool bForceDemoRelevant() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x80000000) != 0; }
	public @property final bool bForceDemoRelevant(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x80000000; } return val; }
	public @property final bool bNetInitialRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x1) != 0; }
	public @property final bool bNetInitialRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x1; } return val; }
	public @property final bool bReplicateRigidBodyLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x2) != 0; }
	public @property final bool bReplicateRigidBodyLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x2; } return val; }
	public @property final bool bKillDuringLevelTransition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x4) != 0; }
	public @property final bool bKillDuringLevelTransition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x4; } return val; }
	public @property final bool bExchangedRoles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x8) != 0; }
	public @property final bool bExchangedRoles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x8; } return val; }
	public @property final bool bConsiderAllStaticMeshComponentsForStreaming() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x10) != 0; }
	public @property final bool bConsiderAllStaticMeshComponentsForStreaming(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x10; } return val; }
	public @property final bool bDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x20) != 0; }
	public @property final bool bDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x20; } return val; }
	public @property final bool bPostRenderIfNotVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x40) != 0; }
	public @property final bool bPostRenderIfNotVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x40; } return val; }
	public @property final bool s_bThrottleNetRelevancy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x80) != 0; }
	public @property final bool s_bThrottleNetRelevancy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x80; } return val; }
	public @property final bool bPendingNetUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x200) != 0; }
	public @property final bool bPendingNetUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x200; } return val; }
	public @property final bool bIgnoreBaseRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x800) != 0; }
	public @property final bool bIgnoreBaseRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x800; } return val; }
	public @property final bool bShadowParented() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x1000) != 0; }
	public @property final bool bShadowParented(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x1000; } return val; }
	public @property final bool bMovable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x20000) != 0; }
	public @property final bool bMovable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x20000; } return val; }
	public @property final bool bDestroyInPainVolume() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x40000) != 0; }
	public @property final bool bDestroyInPainVolume(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x40000; } return val; }
	public @property final bool bShouldBaseAtStartup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x100000) != 0; }
	public @property final bool bShouldBaseAtStartup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x100000; } return val; }
	public @property final bool bPendingDelete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x200000) != 0; }
	public @property final bool bPendingDelete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x200000; } return val; }
	public @property final bool bCanTeleport() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x400000) != 0; }
	public @property final bool bCanTeleport(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x400000; } return val; }
	public @property final bool bAlwaysTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x800000) != 0; }
	public @property final bool bAlwaysTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x800000; } return val; }
	public @property final bool bBlocksNavigation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x1000000) != 0; }
	public @property final bool bBlocksNavigation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x1000000; } return val; }
	public @property final bool BlockRigidBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x2000000) != 0; }
	public @property final bool BlockRigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x2000000; } return val; }
	public @property final bool bCollideWhenPlacing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x4000000) != 0; }
	public @property final bool bCollideWhenPlacing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x4000000; } return val; }
	public @property final bool bCollideComplex() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x20000000) != 0; }
	public @property final bool bCollideComplex(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x20000000; } return val; }
	public @property final bool bBlocksTeleport() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
	public @property final bool bBlocksTeleport(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
	public @property final bool bMoveIgnoresDestruction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2) != 0; }
	public @property final bool bMoveIgnoresDestruction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2; } return val; }
	public @property final bool bNoEncroachCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x4) != 0; }
	public @property final bool bNoEncroachCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x4; } return val; }
	public @property final bool bCollideAsEncroacher() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x8) != 0; }
	public @property final bool bCollideAsEncroacher(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x8; } return val; }
	public @property final bool bPhysRigidBodyOutOfWorldCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x10) != 0; }
	public @property final bool bPhysRigidBodyOutOfWorldCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x10; } return val; }
	public @property final bool bComponentOutsideWorld() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x20) != 0; }
	public @property final bool bComponentOutsideWorld(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x20; } return val; }
	public @property final bool bForceOctreeSNFilter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x40) != 0; }
	public @property final bool bForceOctreeSNFilter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x40; } return val; }
	public @property final bool bRigidBodyWasAwake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x80) != 0; }
	public @property final bool bRigidBodyWasAwake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x80; } return val; }
	public @property final bool bCallRigidBodyWakeEvents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x100) != 0; }
	public @property final bool bCallRigidBodyWakeEvents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x100; } return val; }
	public @property final bool bJustTeleported() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x400) != 0; }
	public @property final bool bJustTeleported(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x400; } return val; }
	public @property final bool bHiddenEd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2000) != 0; }
	public @property final bool bHiddenEd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2000; } return val; }
	public @property final bool bEditable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x4000) != 0; }
	public @property final bool bEditable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x4000; } return val; }
	public @property final bool bHiddenEdGroup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x8000) != 0; }
	public @property final bool bHiddenEdGroup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x8000; } return val; }
	public @property final bool bHiddenEdCustom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x10000) != 0; }
	public @property final bool bHiddenEdCustom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x10000; } return val; }
	public @property final bool bHiddenEdTemporary() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x20000) != 0; }
	public @property final bool bHiddenEdTemporary(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x20000; } return val; }
	public @property final bool bHiddenEdLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x40000) != 0; }
	public @property final bool bHiddenEdLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x40000; } return val; }
	public @property final bool bEdShouldSnap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x80000) != 0; }
	public @property final bool bEdShouldSnap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x80000; } return val; }
	public @property final bool bTempEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x100000) != 0; }
	public @property final bool bTempEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x100000; } return val; }
	public @property final bool bPathColliding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x200000) != 0; }
	public @property final bool bPathColliding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x200000; } return val; }
	public @property final bool bPathTemp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x400000) != 0; }
	public @property final bool bPathTemp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x400000; } return val; }
	public @property final bool bLockLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1000000) != 0; }
	public @property final bool bLockLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1000000; } return val; }
	public @property final bool bForceAllowKismetModification() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2000000) != 0; }
	public @property final bool bForceAllowKismetModification(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2000000; } return val; }
	public @property final bool m_bPotentialSeekingTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x4000000) != 0; }
	public @property final bool m_bPotentialSeekingTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x4000000; } return val; }
	public @property final auto ref int NetTag() { return *cast(int*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref int IndexInTickList() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float LastSlowRelevancyCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float NetUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref float NetPriority() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref float LastNetUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref float TimeSinceLastTick() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref float TickFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref float TickFrequencyAtEndDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref float TickFrequencyDecreaseDistanceStart() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref float TickFrequencyDecreaseDistanceEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref float TickFrequencyLastSeenTimeBeforeForcingMaxTickFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float LifeSpan() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float CreationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref ScriptName Tag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptName Group() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref QWord HiddenEditorViews() { return *cast(QWord*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref ScriptArray!(Actor) Touching() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref ScriptArray!(Actor) Children() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref float LatentFloat() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref AnimNodeSequence LatentSeqNode() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref Vector AngularVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref int OverlapTag() { return *cast(int*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref Rotator RotationRate() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref Actor PendingTouch() { return *cast(Actor*)(cast(size_t)cast(void*)this + 432); }
	public @property final auto ref ScriptClass MessageClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 436); }
	public @property final auto ref ScriptArray!(ScriptClass) SupportedEvents() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 440); }
	final void ForceUpdateComponents(bool bCollisionUpdate, bool bTransformOnly)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCollisionUpdate;
		*cast(bool*)&params[4] = bTransformOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3509], params.ptr, cast(void*)0);
	}
	final ScriptString ConsoleCommand(ScriptString Command, bool bWriteToLog)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(bool*)&params[12] = bWriteToLog;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3512], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	final void Sleep(float Seconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3516], params.ptr, cast(void*)0);
	}
	final void FinishAnim(AnimNodeSequence SeqNode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3518], params.ptr, cast(void*)0);
	}
	final void SetCollision(bool bNewColActors, bool bNewBlockActors, bool bNewIgnoreEncroachers)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bNewColActors;
		*cast(bool*)&params[4] = bNewBlockActors;
		*cast(bool*)&params[8] = bNewIgnoreEncroachers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3520], params.ptr, cast(void*)0);
	}
	final void SetCollisionSize(float NewRadius, float NewHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewRadius;
		*cast(float*)&params[4] = NewHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3524], params.ptr, cast(void*)0);
	}
	final void SetCollisionType(Actor.ECollisionType NewCollisionType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(Actor.ECollisionType*)params.ptr = NewCollisionType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3527], params.ptr, cast(void*)0);
	}
	final void SetDrawScale(float NewScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3529], params.ptr, cast(void*)0);
	}
	final void SetDrawScale3D(Vector NewScale3D)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewScale3D;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3531], params.ptr, cast(void*)0);
	}
	final bool Move(Vector Delta)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Delta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3533], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool SetLocation(Vector NewLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3536], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool SetRotation(Rotator NewRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3539], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final Actor.EMoveDir MovingWhichWay(float* Amount)
	{
		ubyte params[5];
		params[] = 0;
		*cast(float*)params.ptr = *Amount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3542], params.ptr, cast(void*)0);
		*Amount = *cast(float*)params.ptr;
		return *cast(Actor.EMoveDir*)&params[4];
	}
	final void SetZone(bool bForceRefresh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceRefresh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3545], params.ptr, cast(void*)0);
	}
	final bool SetRelativeRotation(Rotator NewRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3547], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool SetRelativeLocation(Vector NewLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3550], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void SetHardAttach(bool bNewHardAttach)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewHardAttach;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3553], params.ptr, cast(void*)0);
	}
	final int fixedTurn(int Current, int Desired, int DeltaRate)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Current;
		*cast(int*)&params[4] = Desired;
		*cast(int*)&params[8] = DeltaRate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3555], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final bool MoveSmooth(Vector Delta)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Delta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3560], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void AutonomousPhysics(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3563], params.ptr, cast(void*)0);
	}
	final float GetTerminalVelocity()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3565], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void SetBase(Actor NewBase, Vector NewFloor, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp, ScriptName AttachName)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = NewBase;
		*cast(Vector*)&params[4] = NewFloor;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[16] = SkelComp;
		*cast(ScriptName*)&params[20] = AttachName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3567], params.ptr, cast(void*)0);
	}
	final void SetOwner(Actor NewOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3572], params.ptr, cast(void*)0);
	}
	final void FindBase()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3574], cast(void*)0, cast(void*)0);
	}
	final bool IsBasedOn(Actor TestActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TestActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3575], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Actor GetBaseMost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3578], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	final bool IsOwnedBy(Actor TestActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TestActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3580], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Vector GetAggregateBaseVelocity(Actor TestBase)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = TestBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3583], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3586], params.ptr, cast(void*)0);
	}
	final void SetForcedInitialReplicatedProperty(Property PropToReplicate, bool bAdd)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Property*)params.ptr = PropToReplicate;
		*cast(bool*)&params[4] = bAdd;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3588], params.ptr, cast(void*)0);
	}
	final void Vect2BP(Actor.BasedPosition* BP, Vector pos, Actor ForcedBase)
	{
		ubyte params[68];
		params[] = 0;
		*cast(Actor.BasedPosition*)params.ptr = *BP;
		*cast(Vector*)&params[52] = pos;
		*cast(Actor*)&params[64] = ForcedBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3591], params.ptr, cast(void*)0);
		*BP = *cast(Actor.BasedPosition*)params.ptr;
	}
	final Vector BP2Vect(Actor.BasedPosition BP)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Actor.BasedPosition*)params.ptr = BP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3595], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[52];
	}
	final void SetBasedPosition(Actor.BasedPosition* BP, Vector pos, Actor ForcedBase)
	{
		ubyte params[68];
		params[] = 0;
		*cast(Actor.BasedPosition*)params.ptr = *BP;
		*cast(Vector*)&params[52] = pos;
		*cast(Actor*)&params[64] = ForcedBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3598], params.ptr, cast(void*)0);
		*BP = *cast(Actor.BasedPosition*)params.ptr;
	}
	final Vector GetBasedPosition(Actor.BasedPosition BP)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Actor.BasedPosition*)params.ptr = BP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3602], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[52];
	}
	final void FlushPersistentDebugLines()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3605], cast(void*)0, cast(void*)0);
	}
	final void DrawDebugLine(Vector LineStart, Vector LineEnd, ubyte R, ubyte G, ubyte B, bool bPersistentLines)
	{
		ubyte params[31];
		params[] = 0;
		*cast(Vector*)params.ptr = LineStart;
		*cast(Vector*)&params[12] = LineEnd;
		params[24] = R;
		params[25] = G;
		params[26] = B;
		*cast(bool*)&params[28] = bPersistentLines;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3606], params.ptr, cast(void*)0);
	}
	final void DrawDebugPoint(Vector Position, float Size, UObject.LinearColor PointColor, bool bPersistentLines)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = Position;
		*cast(float*)&params[12] = Size;
		*cast(UObject.LinearColor*)&params[16] = PointColor;
		*cast(bool*)&params[32] = bPersistentLines;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3613], params.ptr, cast(void*)0);
	}
	final void DrawDebugBox(Vector Center, Vector Extent, ubyte R, ubyte G, ubyte B, bool bPersistentLines)
	{
		ubyte params[31];
		params[] = 0;
		*cast(Vector*)params.ptr = Center;
		*cast(Vector*)&params[12] = Extent;
		params[24] = R;
		params[25] = G;
		params[26] = B;
		*cast(bool*)&params[28] = bPersistentLines;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3618], params.ptr, cast(void*)0);
	}
	final void DrawDebugStar(Vector Position, float Size, ubyte R, ubyte G, ubyte B, bool bPersistentLines)
	{
		ubyte params[23];
		params[] = 0;
		*cast(Vector*)params.ptr = Position;
		*cast(float*)&params[12] = Size;
		params[16] = R;
		params[17] = G;
		params[18] = B;
		*cast(bool*)&params[20] = bPersistentLines;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3625], params.ptr, cast(void*)0);
	}
	final void DrawDebugCoordinateSystem(Vector AxisLoc, Rotator AxisRot, float Scale, bool bPersistentLines)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = AxisLoc;
		*cast(Rotator*)&params[12] = AxisRot;
		*cast(float*)&params[24] = Scale;
		*cast(bool*)&params[28] = bPersistentLines;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3632], params.ptr, cast(void*)0);
	}
	final void DrawDebugSphere(Vector Center, float Radius, int Segments, ubyte R, ubyte G, ubyte B, bool bPersistentLines)
	{
		ubyte params[27];
		params[] = 0;
		*cast(Vector*)params.ptr = Center;
		*cast(float*)&params[12] = Radius;
		*cast(int*)&params[16] = Segments;
		params[20] = R;
		params[21] = G;
		params[22] = B;
		*cast(bool*)&params[24] = bPersistentLines;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3637], params.ptr, cast(void*)0);
	}
	final void DrawDebugCylinder(Vector Start, Vector End, float Radius, int Segments, ubyte R, ubyte G, ubyte B, bool bPersistentLines)
	{
		ubyte params[39];
		params[] = 0;
		*cast(Vector*)params.ptr = Start;
		*cast(Vector*)&params[12] = End;
		*cast(float*)&params[24] = Radius;
		*cast(int*)&params[28] = Segments;
		params[32] = R;
		params[33] = G;
		params[34] = B;
		*cast(bool*)&params[36] = bPersistentLines;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3645], params.ptr, cast(void*)0);
	}
	final void DrawDebugCone(Vector Origin, Vector Direction, float Length, float AngleWidth, float AngleHeight, int NumSides, UObject.Color DrawColor, bool bPersistentLines)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(Vector*)&params[12] = Direction;
		*cast(float*)&params[24] = Length;
		*cast(float*)&params[28] = AngleWidth;
		*cast(float*)&params[32] = AngleHeight;
		*cast(int*)&params[36] = NumSides;
		*cast(UObject.Color*)&params[40] = DrawColor;
		*cast(bool*)&params[44] = bPersistentLines;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3654], params.ptr, cast(void*)0);
	}
	final void DrawDebugString(Vector TextLocation, ScriptString Text, Actor TestBaseActor, UObject.Color TextColor, float Duration)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = TextLocation;
		*cast(ScriptString*)&params[12] = Text;
		*cast(Actor*)&params[24] = TestBaseActor;
		*cast(UObject.Color*)&params[28] = TextColor;
		*cast(float*)&params[32] = Duration;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3663], params.ptr, cast(void*)0);
	}
	final void DrawDebugFrustrum(UObject.Matrix* FrustumToWorld, ubyte R, ubyte G, ubyte B, bool bPersistentLines)
	{
		ubyte params[71];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = *FrustumToWorld;
		params[64] = R;
		params[65] = G;
		params[66] = B;
		*cast(bool*)&params[68] = bPersistentLines;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3669], params.ptr, cast(void*)0);
		*FrustumToWorld = *cast(UObject.Matrix*)params.ptr;
	}
	final void FlushDebugStrings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3675], cast(void*)0, cast(void*)0);
	}
	final void ChartData(ScriptString DataName, float DataValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DataName;
		*cast(float*)&params[12] = DataValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3676], params.ptr, cast(void*)0);
	}
	final void SetHidden(bool bNewHidden)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewHidden;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3679], params.ptr, cast(void*)0);
	}
	final void SetOnlyOwnerSee(bool bNewOnlyOwnerSee)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewOnlyOwnerSee;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3681], params.ptr, cast(void*)0);
	}
	final void SetPhysics(Actor.EPhysics newPhysics)
	{
		ubyte params[1];
		params[] = 0;
		*cast(Actor.EPhysics*)params.ptr = newPhysics;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3683], params.ptr, cast(void*)0);
	}
	final void Clock(float* Time)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = *Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3685], params.ptr, cast(void*)0);
		*Time = *cast(float*)params.ptr;
	}
	final void UnClock(float* Time)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = *Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3687], params.ptr, cast(void*)0);
		*Time = *cast(float*)params.ptr;
	}
	final void AttachComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* NewComponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = NewComponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3689], params.ptr, cast(void*)0);
	}
	final void DetachComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* ExComponent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = ExComponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3691], params.ptr, cast(void*)0);
	}
	final void ReattachComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* ComponentToReattach)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = ComponentToReattach;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3693], params.ptr, cast(void*)0);
	}
	final void SetTickGroup(UObject.ETickingGroup NewTickGroup)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UObject.ETickingGroup*)params.ptr = NewTickGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3695], params.ptr, cast(void*)0);
	}
	final void SetTickIsDisabled(bool bInDisabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInDisabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3697], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3699], cast(void*)0, cast(void*)0);
	}
	final void GainedChild(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3700], params.ptr, cast(void*)0);
	}
	final void LostChild(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3702], params.ptr, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3704], params.ptr, cast(void*)0);
	}
	final void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3706], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3707], params.ptr, cast(void*)0);
	}
	final void Falling()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3712], cast(void*)0, cast(void*)0);
	}
	final void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3713], params.ptr, cast(void*)0);
	}
	final void PhysicsVolumeChange(PhysicsVolume NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3716], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3718], params.ptr, cast(void*)0);
	}
	final void PostTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3723], params.ptr, cast(void*)0);
	}
	final void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3725], params.ptr, cast(void*)0);
	}
	final void Bump(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComp, Vector HitNormal)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3727], params.ptr, cast(void*)0);
	}
	final void BaseChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3731], cast(void*)0, cast(void*)0);
	}
	final void Attach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3732], params.ptr, cast(void*)0);
	}
	final void Detach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3734], params.ptr, cast(void*)0);
	}
	final Actor SpecialHandling(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3736], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final void CollisionChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3739], cast(void*)0, cast(void*)0);
	}
	final bool EncroachingOn(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3740], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3743], params.ptr, cast(void*)0);
	}
	final void RanInto(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3745], params.ptr, cast(void*)0);
	}
	final void OnWakeRBPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3747], cast(void*)0, cast(void*)0);
	}
	final void OnSleepRBPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3748], cast(void*)0, cast(void*)0);
	}
	final bool ClampRotation(Rotator* out_Rot, Rotator rBase, Rotator rUpperLimits, Rotator rLowerLimits)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Rotator*)params.ptr = *out_Rot;
		*cast(Rotator*)&params[12] = rBase;
		*cast(Rotator*)&params[24] = rUpperLimits;
		*cast(Rotator*)&params[36] = rLowerLimits;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3749], params.ptr, cast(void*)0);
		*out_Rot = *cast(Rotator*)params.ptr;
		return *cast(bool*)&params[48];
	}
	final bool OverRotated(Rotator* out_Desired, Rotator* out_Actual)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Rotator*)params.ptr = *out_Desired;
		*cast(Rotator*)&params[12] = *out_Actual;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3755], params.ptr, cast(void*)0);
		*out_Desired = *cast(Rotator*)params.ptr;
		*out_Actual = *cast(Rotator*)&params[12];
		return *cast(bool*)&params[24];
	}
	final bool UsedBy(Pawn User)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = User;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3759], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3762], params.ptr, cast(void*)0);
	}
	final void OutsideWorldBounds()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3764], cast(void*)0, cast(void*)0);
	}
	final void VolumeBasedDestroy(PhysicsVolume PV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = PV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3765], params.ptr, cast(void*)0);
	}
	final Actor Trace(Vector* HitLocation, Vector* HitNormal, Vector TraceEnd, Vector TraceStart, bool bTraceActors, Vector Extent, Actor.TraceHitInfo* HitInfo, int ExtraTraceFlags)
	{
		ubyte params[100];
		params[] = 0;
		*cast(Vector*)params.ptr = *HitLocation;
		*cast(Vector*)&params[12] = *HitNormal;
		*cast(Vector*)&params[24] = TraceEnd;
		*cast(Vector*)&params[36] = TraceStart;
		*cast(bool*)&params[48] = bTraceActors;
		*cast(Vector*)&params[52] = Extent;
		*cast(Actor.TraceHitInfo*)&params[64] = *HitInfo;
		*cast(int*)&params[92] = ExtraTraceFlags;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3767], params.ptr, cast(void*)0);
		*HitLocation = *cast(Vector*)params.ptr;
		*HitNormal = *cast(Vector*)&params[12];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[64];
		return *cast(Actor*)&params[96];
	}
	final bool TraceComponent(Vector* HitLocation, Vector* HitNormal, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* InComponent, Vector TraceEnd, Vector TraceStart, Vector Extent, Actor.TraceHitInfo* HitInfo, bool bComplexCollision)
	{
		ubyte params[100];
		params[] = 0;
		*cast(Vector*)params.ptr = *HitLocation;
		*cast(Vector*)&params[12] = *HitNormal;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[24] = InComponent;
		*cast(Vector*)&params[28] = TraceEnd;
		*cast(Vector*)&params[40] = TraceStart;
		*cast(Vector*)&params[52] = Extent;
		*cast(Actor.TraceHitInfo*)&params[64] = *HitInfo;
		*cast(bool*)&params[92] = bComplexCollision;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3785], params.ptr, cast(void*)0);
		*HitLocation = *cast(Vector*)params.ptr;
		*HitNormal = *cast(Vector*)&params[12];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[64];
		return *cast(bool*)&params[96];
	}
	final bool PointCheckComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* InComponent, Vector PointLocation, Vector PointExtent)
	{
		ubyte params[32];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = InComponent;
		*cast(Vector*)&params[4] = PointLocation;
		*cast(Vector*)&params[16] = PointExtent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3795], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final bool FastTrace(Vector TraceEnd, Vector TraceStart, Vector BoxExtent, bool bTraceBullet)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = TraceEnd;
		*cast(Vector*)&params[12] = TraceStart;
		*cast(Vector*)&params[24] = BoxExtent;
		*cast(bool*)&params[36] = bTraceBullet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3800], params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
	}
	final bool TraceAllPhysicsAssetInteractions(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelMeshComp, Vector EndTrace, Vector StartTrace, ScriptArray!(Actor.ImpactInfo)* out_Hits, Vector Extent)
	{
		ubyte params[56];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelMeshComp;
		*cast(Vector*)&params[4] = EndTrace;
		*cast(Vector*)&params[16] = StartTrace;
		*cast(ScriptArray!(Actor.ImpactInfo)*)&params[28] = *out_Hits;
		*cast(Vector*)&params[40] = Extent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3806], params.ptr, cast(void*)0);
		*out_Hits = *cast(ScriptArray!(Actor.ImpactInfo)*)&params[28];
		return *cast(bool*)&params[52];
	}
	final bool FindSpot(Vector BoxExtent, Vector* SpotLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = BoxExtent;
		*cast(Vector*)&params[12] = *SpotLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3821], params.ptr, cast(void*)0);
		*SpotLocation = *cast(Vector*)&params[12];
		return *cast(bool*)&params[24];
	}
	final bool ContainsPoint(Vector Spot)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Spot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3825], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool IsOverlapping(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3828], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void GetComponentsBoundingBox(UObject.Box* ActorBox)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject.Box*)params.ptr = *ActorBox;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3831], params.ptr, cast(void*)0);
		*ActorBox = *cast(UObject.Box*)params.ptr;
	}
	final void GetBoundingCylinder(float* CollisionRadius, float* CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *CollisionRadius;
		*cast(float*)&params[4] = *CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3833], params.ptr, cast(void*)0);
		*CollisionRadius = *cast(float*)params.ptr;
		*CollisionHeight = *cast(float*)&params[4];
	}
	final bool IsBlockedBy(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3836], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Actor Spawn(ScriptClass SpawnClass, Actor SpawnOwner, ScriptName SpawnTag, Vector SpawnLocation, Rotator SpawnRotation, Actor ActorTemplate, bool bNoCollisionFail)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = SpawnClass;
		*cast(Actor*)&params[4] = SpawnOwner;
		*cast(ScriptName*)&params[8] = SpawnTag;
		*cast(Vector*)&params[16] = SpawnLocation;
		*cast(Rotator*)&params[28] = SpawnRotation;
		*cast(Actor*)&params[40] = ActorTemplate;
		*cast(bool*)&params[44] = bNoCollisionFail;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3839], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[48];
	}
	final bool Destroy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3848], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void TornOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3850], cast(void*)0, cast(void*)0);
	}
	final void SetTimer(float InRate, bool inbLoop, ScriptName inTimerFunc, UObject inObj)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = InRate;
		*cast(bool*)&params[4] = inbLoop;
		*cast(ScriptName*)&params[8] = inTimerFunc;
		*cast(UObject*)&params[16] = inObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3851], params.ptr, cast(void*)0);
	}
	final void ClearTimer(ScriptName inTimerFunc, UObject inObj)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = inTimerFunc;
		*cast(UObject*)&params[8] = inObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3856], params.ptr, cast(void*)0);
	}
	final void ClearAllTimers(UObject inObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject*)params.ptr = inObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3859], params.ptr, cast(void*)0);
	}
	final void PauseTimer(bool bPause, ScriptName inTimerFunc, UObject inObj)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bPause;
		*cast(ScriptName*)&params[4] = inTimerFunc;
		*cast(UObject*)&params[12] = inObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3861], params.ptr, cast(void*)0);
	}
	final bool IsTimerActive(ScriptName inTimerFunc, UObject inObj)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = inTimerFunc;
		*cast(UObject*)&params[8] = inObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3865], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final float GetTimerCount(ScriptName inTimerFunc, UObject inObj)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = inTimerFunc;
		*cast(UObject*)&params[8] = inObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3869], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float GetTimerRate(ScriptName TimerFuncName, UObject inObj)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TimerFuncName;
		*cast(UObject*)&params[8] = inObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3873], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float GetRemainingTimeForTimer(ScriptName TimerFuncName, UObject inObj)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TimerFuncName;
		*cast(UObject*)&params[8] = inObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3877], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final void ModifyTimerTimeDilation(ScriptName TimerName, float InTimerTimeDilation, UObject inObj)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TimerName;
		*cast(float*)&params[8] = InTimerTimeDilation;
		*cast(UObject*)&params[12] = inObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3883], params.ptr, cast(void*)0);
	}
	final void ResetTimerTimeDilation(ScriptName TimerName, UObject inObj)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TimerName;
		*cast(UObject*)&params[8] = inObj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3887], params.ptr, cast(void*)0);
	}
	final 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* CreateAudioComponent(SoundCue InSoundCue, bool bPlay, bool bStopWhenOwnerDestroyed, bool bUseLocation, Vector SourceLocation, bool bAttachToSelf)
	{
		ubyte params[36];
		params[] = 0;
		*cast(SoundCue*)params.ptr = InSoundCue;
		*cast(bool*)&params[4] = bPlay;
		*cast(bool*)&params[8] = bStopWhenOwnerDestroyed;
		*cast(bool*)&params[12] = bUseLocation;
		*cast(Vector*)&params[16] = SourceLocation;
		*cast(bool*)&params[28] = bAttachToSelf;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3890], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[32];
	}
	final void PlaySound(SoundCue InSoundCue, bool bNotReplicated, bool bNoRepToOwner, bool bStopWhenOwnerDestroyed, Vector SoundLocation, bool bNoRepToRelevant)
	{
		ubyte params[32];
		params[] = 0;
		*cast(SoundCue*)params.ptr = InSoundCue;
		*cast(bool*)&params[4] = bNotReplicated;
		*cast(bool*)&params[8] = bNoRepToOwner;
		*cast(bool*)&params[12] = bStopWhenOwnerDestroyed;
		*cast(Vector*)&params[16] = SoundLocation;
		*cast(bool*)&params[28] = bNoRepToRelevant;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3898], params.ptr, cast(void*)0);
	}
	final void MakeNoise(float Loudness, ScriptName NoiseType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = Loudness;
		*cast(ScriptName*)&params[4] = NoiseType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3905], params.ptr, cast(void*)0);
	}
	final bool PlayerCanSeeMe(bool bForceLOSCheck)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceLOSCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3908], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SuggestTossVelocity(Vector* TossVelocity, Vector Destination, Vector Start, float TossSpeed, float BaseTossZ, float DesiredZPct, Vector CollisionSize, float TerminalVelocity, float OverrideGravityZ, bool bOnlyTraceUp)
	{
		ubyte params[76];
		params[] = 0;
		*cast(Vector*)params.ptr = *TossVelocity;
		*cast(Vector*)&params[12] = Destination;
		*cast(Vector*)&params[24] = Start;
		*cast(float*)&params[36] = TossSpeed;
		*cast(float*)&params[40] = BaseTossZ;
		*cast(float*)&params[44] = DesiredZPct;
		*cast(Vector*)&params[48] = CollisionSize;
		*cast(float*)&params[60] = TerminalVelocity;
		*cast(float*)&params[64] = OverrideGravityZ;
		*cast(bool*)&params[68] = bOnlyTraceUp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3911], params.ptr, cast(void*)0);
		*TossVelocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[72];
	}
	final bool CalculateMinSpeedTrajectory(Vector* out_Velocity, Vector End, Vector Start, float MaxTossSpeed, float MinTossSpeed, Vector CollisionSize, float TerminalVelocity, float GravityZ, bool bOnlyTraceUp)
	{
		ubyte params[72];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Velocity;
		*cast(Vector*)&params[12] = End;
		*cast(Vector*)&params[24] = Start;
		*cast(float*)&params[36] = MaxTossSpeed;
		*cast(float*)&params[40] = MinTossSpeed;
		*cast(Vector*)&params[44] = CollisionSize;
		*cast(float*)&params[56] = TerminalVelocity;
		*cast(float*)&params[60] = GravityZ;
		*cast(bool*)&params[64] = bOnlyTraceUp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3923], params.ptr, cast(void*)0);
		*out_Velocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[68];
	}
	final Vector GetDestination(Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3934], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final bool PreTeleport(Teleporter InTeleporter)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Teleporter*)params.ptr = InTeleporter;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3937], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PostTeleport(Teleporter OutTeleporter)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Teleporter*)params.ptr = OutTeleporter;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3940], params.ptr, cast(void*)0);
	}
	final ScriptString GetURLMap()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3942], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void AllActors(ScriptClass BaseClass, Actor* pActor, ScriptClass InterfaceClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(ScriptClass*)&params[8] = InterfaceClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3944], params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
	}
	final void DynamicActors(ScriptClass BaseClass, Actor* pActor, ScriptClass InterfaceClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(ScriptClass*)&params[8] = InterfaceClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3948], params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
	}
	final void ChildActors(ScriptClass BaseClass, Actor* pActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3952], params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
	}
	final void BasedActors(ScriptClass BaseClass, Actor* pActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3955], params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
	}
	final void TouchingActors(ScriptClass BaseClass, Actor* pActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3958], params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
	}
	final void TraceActors(ScriptClass BaseClass, Actor* pActor, Vector* HitLoc, Vector* HitNorm, Vector End, Vector Start, Vector Extent, Actor.TraceHitInfo* HitInfo, int ExtraTraceFlags)
	{
		ubyte params[100];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(Vector*)&params[8] = *HitLoc;
		*cast(Vector*)&params[20] = *HitNorm;
		*cast(Vector*)&params[32] = End;
		*cast(Vector*)&params[44] = Start;
		*cast(Vector*)&params[56] = Extent;
		*cast(Actor.TraceHitInfo*)&params[68] = *HitInfo;
		*cast(int*)&params[96] = ExtraTraceFlags;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3961], params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
		*HitLoc = *cast(Vector*)&params[8];
		*HitNorm = *cast(Vector*)&params[20];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[68];
	}
	final void VisibleActors(ScriptClass BaseClass, Actor* pActor, float Radius, Vector Loc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(float*)&params[8] = Radius;
		*cast(Vector*)&params[12] = Loc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3971], params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
	}
	final void VisibleCollidingActors(ScriptClass BaseClass, Actor* pActor, float Radius, Vector Loc, bool bIgnoreHidden, Vector Extent, bool bTraceActors, ScriptClass InterfaceClass, Actor.TraceHitInfo* HitInfo)
	{
		ubyte params[76];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(float*)&params[8] = Radius;
		*cast(Vector*)&params[12] = Loc;
		*cast(bool*)&params[24] = bIgnoreHidden;
		*cast(Vector*)&params[28] = Extent;
		*cast(bool*)&params[40] = bTraceActors;
		*cast(ScriptClass*)&params[44] = InterfaceClass;
		*cast(Actor.TraceHitInfo*)&params[48] = *HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3976], params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[48];
	}
	final void CollidingActors(ScriptClass BaseClass, Actor* pActor, float Radius, Vector Loc, bool bUseOverlapCheck, ScriptClass InterfaceClass, Actor.TraceHitInfo* HitInfo)
	{
		ubyte params[60];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(float*)&params[8] = Radius;
		*cast(Vector*)&params[12] = Loc;
		*cast(bool*)&params[24] = bUseOverlapCheck;
		*cast(ScriptClass*)&params[28] = InterfaceClass;
		*cast(Actor.TraceHitInfo*)&params[32] = *HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3986], params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[32];
	}
	final void VisibleCollidingExtentActors(ScriptClass BaseClass, Actor* pActor, float Radius, Vector Loc, Vector AltLoc, bool bIgnoreHidden, Vector Extent, bool bTraceActors, ScriptClass InterfaceClass, Actor.TraceHitInfo* HitInfo, float XYCheckRadius)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *pActor;
		*cast(float*)&params[8] = Radius;
		*cast(Vector*)&params[12] = Loc;
		*cast(Vector*)&params[24] = AltLoc;
		*cast(bool*)&params[36] = bIgnoreHidden;
		*cast(Vector*)&params[40] = Extent;
		*cast(bool*)&params[52] = bTraceActors;
		*cast(ScriptClass*)&params[56] = InterfaceClass;
		*cast(Actor.TraceHitInfo*)&params[60] = *HitInfo;
		*cast(float*)&params[88] = XYCheckRadius;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3994], params.ptr, cast(void*)0);
		*pActor = *cast(Actor*)&params[4];
		*HitInfo = *cast(Actor.TraceHitInfo*)&params[60];
	}
	final void OverlappingActors(ScriptClass BaseClass, Actor* out_Actor, float Radius, Vector Loc, bool bIgnoreHidden)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Actor*)&params[4] = *out_Actor;
		*cast(float*)&params[8] = Radius;
		*cast(Vector*)&params[12] = Loc;
		*cast(bool*)&params[24] = bIgnoreHidden;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4006], params.ptr, cast(void*)0);
		*out_Actor = *cast(Actor*)&params[4];
	}
	final void ComponentList(ScriptClass BaseClass, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void** out_Component)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = *out_Component;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4012], params.ptr, cast(void*)0);
		*out_Component = *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4];
	}
	final void AllOwnedComponents(ScriptClass BaseClass, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void** OutComponent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = *OutComponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4015], params.ptr, cast(void*)0);
		*OutComponent = *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4];
	}
	final void LocalPlayerControllers(ScriptClass BaseClass, PlayerController* PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(PlayerController*)&params[4] = *PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4018], params.ptr, cast(void*)0);
		*PC = *cast(PlayerController*)&params[4];
	}
	final PlayerController GetALocalPlayerController()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4021], params.ptr, cast(void*)0);
		return *cast(PlayerController*)params.ptr;
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4023], cast(void*)0, cast(void*)0);
	}
	final void BroadcastLocalizedMessage(ScriptClass InMessageClass, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InMessageClass;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4032], params.ptr, cast(void*)0);
	}
	final void BroadcastLocalizedTeamMessage(int TeamIndex, ScriptClass InMessageClass, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		*cast(ScriptClass*)&params[4] = InMessageClass;
		*cast(int*)&params[8] = Switch;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[16] = RelatedPRI_2;
		*cast(UObject*)&params[20] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4039], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4046], cast(void*)0, cast(void*)0);
	}
	final void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4047], cast(void*)0, cast(void*)0);
	}
	final void ConstraintBrokenNotify(Actor ConOwner, RB_ConstraintSetup ConSetup, RB_ConstraintInstance ConInstance)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = ConOwner;
		*cast(RB_ConstraintSetup*)&params[4] = ConSetup;
		*cast(RB_ConstraintInstance*)&params[8] = ConInstance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4050], params.ptr, cast(void*)0);
	}
	final void NotifySkelControlBeyondLimit(SkelControlLookAt LookAt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SkelControlLookAt*)params.ptr = LookAt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4054], params.ptr, cast(void*)0);
	}
	final bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4056], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool HurtRadius(float BaseDamage, float DamageRadius, ScriptClass DamageType, float Momentum, Vector HurtOrigin, Actor IgnoredActor, Controller InstigatedByController, bool bDoFullDamage)
	{
		ubyte params[44];
		params[] = 0;
		*cast(float*)params.ptr = BaseDamage;
		*cast(float*)&params[4] = DamageRadius;
		*cast(ScriptClass*)&params[8] = DamageType;
		*cast(float*)&params[12] = Momentum;
		*cast(Vector*)&params[16] = HurtOrigin;
		*cast(Actor*)&params[28] = IgnoredActor;
		*cast(Controller*)&params[32] = InstigatedByController;
		*cast(bool*)&params[36] = bDoFullDamage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4061], params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
	}
	final void KilledBy(Pawn EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4085], params.ptr, cast(void*)0);
	}
	final void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass DamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = DamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4087], params.ptr, cast(void*)0);
	}
	final bool HealDamage(int Amount, Controller Healer, ScriptClass DamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		*cast(Controller*)&params[4] = Healer;
		*cast(ScriptClass*)&params[8] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4098], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void TakeRadiusDamage(Controller InstigatedBy, float BaseDamage, float DamageRadius, ScriptClass DamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = DamageRadius;
		*cast(ScriptClass*)&params[12] = DamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4103], params.ptr, cast(void*)0);
	}
	final void CheckHitInfo(Actor.TraceHitInfo* HitInfo, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* FallBackComponent, Vector Dir, Vector* out_HitLocation)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Actor.TraceHitInfo*)params.ptr = *HitInfo;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[28] = FallBackComponent;
		*cast(Vector*)&params[32] = Dir;
		*cast(Vector*)&params[44] = *out_HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4120], params.ptr, cast(void*)0);
		*HitInfo = *cast(Actor.TraceHitInfo*)params.ptr;
		*out_HitLocation = *cast(Vector*)&params[44];
	}
	final float GetGravityZ()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4131], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void DebugFreezeGame(Actor ActorToLookAt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = ActorToLookAt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4133], params.ptr, cast(void*)0);
	}
	final bool CheckForErrors()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4135], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void BecomeViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4137], params.ptr, cast(void*)0);
	}
	final void EndViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4139], params.ptr, cast(void*)0);
	}
	final bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4141], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	final ScriptString GetItemName(ScriptString FullName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FullName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4150], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4154], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void ReplaceText(ScriptString* Text, ScriptString Replace, ScriptString With)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *Text;
		*cast(ScriptString*)&params[12] = Replace;
		*cast(ScriptString*)&params[24] = With;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4156], params.ptr, cast(void*)0);
		*Text = *cast(ScriptString*)params.ptr;
	}
	final ScriptString GetLocalString(int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4162], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final void MatchStarting()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4167], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetDebugName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4168], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4170], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	final ScriptString GetPhysicsName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4203], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void ModifyHearSoundComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4206], params.ptr, cast(void*)0);
	}
	final 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* GetFaceFXAudioComponent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4208], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr;
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4210], cast(void*)0, cast(void*)0);
	}
	final bool IsInPain()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4211], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PlayTeleportEffect(bool bOut, bool bSound)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOut;
		*cast(bool*)&params[4] = bSound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4216], params.ptr, cast(void*)0);
	}
	final bool CanSplash()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4219], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ApplyFluidSurfaceImpact(FluidSurfaceActor Fluid, Vector HitLocation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(FluidSurfaceActor*)params.ptr = Fluid;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4221], params.ptr, cast(void*)0);
	}
	final bool EffectIsRelevant(Vector SpawnLocation, bool bForceDedicated, float VisibleCullDistance, float HiddenCullDistance)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(bool*)&params[12] = bForceDedicated;
		*cast(float*)&params[16] = VisibleCullDistance;
		*cast(float*)&params[20] = HiddenCullDistance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4231], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final void DebugMessagePlayer(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4252], params.ptr, cast(void*)0);
	}
	final bool TriggerEventClass(ScriptClass InEventClass, Actor InInstigator, int ActivateIndex, bool bTest, ScriptArray!(SequenceEvent)* ActivatedEvents)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InEventClass;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(int*)&params[8] = ActivateIndex;
		*cast(bool*)&params[12] = bTest;
		*cast(ScriptArray!(SequenceEvent)*)&params[16] = *ActivatedEvents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4264], params.ptr, cast(void*)0);
		*ActivatedEvents = *cast(ScriptArray!(SequenceEvent)*)&params[16];
		return *cast(bool*)&params[28];
	}
	final bool ActivateEventClass(ScriptClass InClass, Actor InInstigator, ScriptArray!(SequenceEvent)* EventList, ScriptArray!(int)* ActivateIndices, bool bTest, ScriptArray!(SequenceEvent)* ActivatedEvents)
	{
		ubyte params[52];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InClass;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(ScriptArray!(SequenceEvent)*)&params[8] = *EventList;
		*cast(ScriptArray!(int)*)&params[20] = *ActivateIndices;
		*cast(bool*)&params[32] = bTest;
		*cast(ScriptArray!(SequenceEvent)*)&params[36] = *ActivatedEvents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4274], params.ptr, cast(void*)0);
		*EventList = *cast(ScriptArray!(SequenceEvent)*)&params[8];
		*ActivateIndices = *cast(ScriptArray!(int)*)&params[20];
		*ActivatedEvents = *cast(ScriptArray!(SequenceEvent)*)&params[36];
		return *cast(bool*)&params[48];
	}
	final void ReceivedNewEvent(SequenceEvent Evt)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SequenceEvent*)params.ptr = Evt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4275], params.ptr, cast(void*)0);
	}
	final bool TriggerGlobalEventClass(ScriptClass InEventClass, Actor InInstigator, int ActivateIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InEventClass;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(int*)&params[8] = ActivateIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4277], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool FindEventsOfClass(ScriptClass EventClass, ScriptArray!(SequenceEvent)* out_EventList, bool bIncludeDisabled)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = EventClass;
		*cast(ScriptArray!(SequenceEvent)*)&params[4] = *out_EventList;
		*cast(bool*)&params[16] = bIncludeDisabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4305], params.ptr, cast(void*)0);
		*out_EventList = *cast(ScriptArray!(SequenceEvent)*)&params[4];
		return *cast(bool*)&params[20];
	}
	final void ClearLatentAction(ScriptClass actionClass, bool bAborted, SeqAct_Latent exceptionAction)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = actionClass;
		*cast(bool*)&params[4] = bAborted;
		*cast(SeqAct_Latent*)&params[8] = exceptionAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4316], params.ptr, cast(void*)0);
	}
	final void OnDestroy(SeqAct_Destroy Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Destroy*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4322], params.ptr, cast(void*)0);
	}
	final void ForceNetRelevant()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4331], cast(void*)0, cast(void*)0);
	}
	final void SetNetUpdateTime(float NewUpdateTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewUpdateTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4335], params.ptr, cast(void*)0);
	}
	final void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4337], cast(void*)0, cast(void*)0);
	}
	final void PrestreamTextures(float Seconds, bool bEnableStreaming, int CinematicTextureGroups)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = Seconds;
		*cast(bool*)&params[4] = bEnableStreaming;
		*cast(int*)&params[8] = CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4341], params.ptr, cast(void*)0);
	}
	final void OnModifyHealth(SeqAct_ModifyHealth Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ModifyHealth*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4345], params.ptr, cast(void*)0);
	}
	final void OnTeleport(SeqAct_Teleport Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Teleport*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4354], params.ptr, cast(void*)0);
	}
	final void OnSetVelocity(SeqAct_SetVelocity Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetVelocity*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4377], params.ptr, cast(void*)0);
	}
	final void OnSetBlockRigidBody(SeqAct_SetBlockRigidBody Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetBlockRigidBody*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4386], params.ptr, cast(void*)0);
	}
	final void OnSetPhysics(SeqAct_SetPhysics Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetPhysics*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4391], params.ptr, cast(void*)0);
	}
	final void OnChangeCollision(SeqAct_ChangeCollision Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ChangeCollision*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4395], params.ptr, cast(void*)0);
	}
	final void OnToggleHidden(SeqAct_ToggleHidden Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleHidden*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4405], params.ptr, cast(void*)0);
	}
	final void OnAttachToActor(SeqAct_AttachToActor Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_AttachToActor*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4413], params.ptr, cast(void*)0);
	}
	final void DoKismetAttachment(Actor Attachment, SeqAct_AttachToActor Action)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Attachment;
		*cast(SeqAct_AttachToActor*)&params[4] = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4422], params.ptr, cast(void*)0);
	}
	final void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4435], params.ptr, cast(void*)0);
	}
	final void OnAnimPlay(AnimNodeSequence SeqNode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4439], params.ptr, cast(void*)0);
	}
	final void BeginAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4441], params.ptr, cast(void*)0);
	}
	final void SetAnimPosition(ScriptName SlotName, int ChannelIndex, ScriptName InAnimSeqName, float InPosition, bool bFireNotifies, bool bLooping, bool bEnableRootMotion)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SlotName;
		*cast(int*)&params[8] = ChannelIndex;
		*cast(ScriptName*)&params[12] = InAnimSeqName;
		*cast(float*)&params[20] = InPosition;
		*cast(bool*)&params[24] = bFireNotifies;
		*cast(bool*)&params[28] = bLooping;
		*cast(bool*)&params[32] = bEnableRootMotion;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4443], params.ptr, cast(void*)0);
	}
	final void FinishAnimControl(InterpGroup InInterpGroup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpGroup*)params.ptr = InInterpGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4451], params.ptr, cast(void*)0);
	}
	final bool PlayActorFaceFXAnim(FaceFXAnimSet AnimSet, ScriptString GroupName, ScriptString SeqName, SoundCue SoundCueToPlay)
	{
		ubyte params[36];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = AnimSet;
		*cast(ScriptString*)&params[4] = GroupName;
		*cast(ScriptString*)&params[16] = SeqName;
		*cast(SoundCue*)&params[28] = SoundCueToPlay;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4453], params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	final void StopActorFaceFXAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4459], cast(void*)0, cast(void*)0);
	}
	final void SetMorphWeight(ScriptName MorphNodeName, float MorphWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphNodeName;
		*cast(float*)&params[8] = MorphWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4460], params.ptr, cast(void*)0);
	}
	final void SetSkelControlScale(ScriptName SkelControlName, float Scale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SkelControlName;
		*cast(float*)&params[8] = Scale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4463], params.ptr, cast(void*)0);
	}
	final bool IsActorPlayingFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4466], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CanActorPlayFaceFXAnim()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4468], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final FaceFXAsset GetActorFaceFXAsset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4470], params.ptr, cast(void*)0);
		return *cast(FaceFXAsset*)params.ptr;
	}
	final bool IsStationary()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4472], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void GetActorEyesViewPoint(Vector* out_Location, Rotator* out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Location;
		*cast(Rotator*)&params[12] = *out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4474], params.ptr, cast(void*)0);
		*out_Location = *cast(Vector*)params.ptr;
		*out_Rotation = *cast(Rotator*)&params[12];
	}
	final bool IsPlayerOwned()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4477], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PawnBaseDied()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4479], cast(void*)0, cast(void*)0);
	}
	final ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4480], params.ptr, cast(void*)0);
		return params[0];
	}
	final ubyte ScriptGetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4482], params.ptr, cast(void*)0);
		return params[0];
	}
	final void NotifyLocalPlayerTeamReceived()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4484], cast(void*)0, cast(void*)0);
	}
	final void FindGoodEndView(PlayerController PC, Rotator* GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = *GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4485], params.ptr, cast(void*)0);
		*GoodRotation = *cast(Rotator*)&params[4];
	}
	final Vector GetTargetLocation(Actor RequestedBy, bool bRequestAlternateLoc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = RequestedBy;
		*cast(bool*)&params[4] = bRequestAlternateLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4488], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	final void SpawnedByKismet()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4492], cast(void*)0, cast(void*)0);
	}
	final void InterpolationStarted(SeqAct_Interp InterpAction, InterpGroupInst GroupInst)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		*cast(InterpGroupInst*)&params[4] = GroupInst;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4493], params.ptr, cast(void*)0);
	}
	final void InterpolationFinished(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4496], params.ptr, cast(void*)0);
	}
	final void InterpolationChanged(SeqAct_Interp InterpAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Interp*)params.ptr = InterpAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4498], params.ptr, cast(void*)0);
	}
	final void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComponent, Actor.CollisionImpactData* RigidCollisionData, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = *RigidCollisionData;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4500], params.ptr, cast(void*)0);
		*RigidCollisionData = *cast(Actor.CollisionImpactData*)&params[8];
	}
	final void OnRanOver(SVehicle Vehicle, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* RunOverComponent, int WheelIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SVehicle*)params.ptr = Vehicle;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = RunOverComponent;
		*cast(int*)&params[8] = WheelIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4505], params.ptr, cast(void*)0);
	}
	final void SetHUDLocation(Vector NewHUDLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewHUDLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4509], params.ptr, cast(void*)0);
	}
	final void NativePostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4511], params.ptr, cast(void*)0);
	}
	final void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4516], params.ptr, cast(void*)0);
	}
	final void RootMotionModeChanged(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4521], params.ptr, cast(void*)0);
	}
	final void RootMotionExtracted(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp, UObject.BoneAtom* ExtractedRootMotionDelta)
	{
		ubyte params[36];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		*cast(UObject.BoneAtom*)&params[16] = *ExtractedRootMotionDelta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4523], params.ptr, cast(void*)0);
		*ExtractedRootMotionDelta = *cast(UObject.BoneAtom*)&params[16];
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4526], params.ptr, cast(void*)0);
	}
	final UObject.Guid GetPackageGuid(ScriptName PackageName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PackageName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4528], params.ptr, cast(void*)0);
		return *cast(UObject.Guid*)&params[8];
	}
	final void OnRigidBodySpringOverextension(RB_BodyInstance BodyInstance)
	{
		ubyte params[4];
		params[] = 0;
		*cast(RB_BodyInstance*)params.ptr = BodyInstance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4531], params.ptr, cast(void*)0);
	}
	final bool IsInPersistentLevel(bool bIncludeLevelStreamingPersistent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bIncludeLevelStreamingPersistent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4533], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void GetAimFrictionExtent(float* Width, float* Height, Vector* Center)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = *Width;
		*cast(float*)&params[4] = *Height;
		*cast(Vector*)&params[8] = *Center;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4536], params.ptr, cast(void*)0);
		*Width = *cast(float*)params.ptr;
		*Height = *cast(float*)&params[4];
		*Center = *cast(Vector*)&params[8];
	}
	final void GetAimAdhesionExtent(float* Width, float* Height, Vector* Center)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = *Width;
		*cast(float*)&params[4] = *Height;
		*cast(Vector*)&params[8] = *Center;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4541], params.ptr, cast(void*)0);
		*Width = *cast(float*)params.ptr;
		*Height = *cast(float*)&params[4];
		*Center = *cast(Vector*)&params[8];
	}
	final bool PlayParticleEffect(AnimNotify_PlayParticleEffect AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_PlayParticleEffect*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4546], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CreateForceField(AnimNotify_ForceField AnimNotifyData)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AnimNotify_ForceField*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4549], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void TrailsNotify(AnimNotify_Trails AnimNotifyData)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNotify_Trails*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4552], params.ptr, cast(void*)0);
	}
	final void TrailsNotifyTick(AnimNotify_Trails AnimNotifyData)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNotify_Trails*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4554], params.ptr, cast(void*)0);
	}
	final void TrailsNotifyEnd(AnimNotify_Trails AnimNotifyData)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNotify_Trails*)params.ptr = AnimNotifyData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4556], params.ptr, cast(void*)0);
	}
	final bool SupportsKismetModification(SequenceOp AskingOp, ScriptString* Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(SequenceOp*)params.ptr = AskingOp;
		*cast(ScriptString*)&params[4] = *Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4558], params.ptr, cast(void*)0);
		*Reason = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[16];
	}
	final void AnimTreeUpdated(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4562], params.ptr, cast(void*)0);
	}
	final void PostDemoRewind()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4564], cast(void*)0, cast(void*)0);
	}
	final void ReplicationEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4565], cast(void*)0, cast(void*)0);
	}
	final Vector GetAvoidanceVector(ScriptArray!(Actor)* Obstacles, Vector GoalLocation, float CollisionRadius, float MaxSpeed, int NumSamples, float VelocityStepRate, float MaxTimeTilOverlap)
	{
		ubyte params[56];
		params[] = 0;
		*cast(ScriptArray!(Actor)*)params.ptr = *Obstacles;
		*cast(Vector*)&params[12] = GoalLocation;
		*cast(float*)&params[24] = CollisionRadius;
		*cast(float*)&params[28] = MaxSpeed;
		*cast(int*)&params[32] = NumSamples;
		*cast(float*)&params[36] = VelocityStepRate;
		*cast(float*)&params[40] = MaxTimeTilOverlap;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4566], params.ptr, cast(void*)0);
		*Obstacles = *cast(ScriptArray!(Actor)*)params.ptr;
		return *cast(Vector*)&params[44];
	}
	final bool WillOverlap(Vector PosA, Vector VelA, Vector PosB, Vector VelB, float StepSize, float Radius, float* Time)
	{
		ubyte params[64];
		params[] = 0;
		*cast(Vector*)params.ptr = PosA;
		*cast(Vector*)&params[12] = VelA;
		*cast(Vector*)&params[24] = PosB;
		*cast(Vector*)&params[36] = VelB;
		*cast(float*)&params[48] = StepSize;
		*cast(float*)&params[52] = Radius;
		*cast(float*)&params[56] = *Time;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4576], params.ptr, cast(void*)0);
		*Time = *cast(float*)&params[56];
		return *cast(bool*)&params[60];
	}
	final bool ShouldBeHiddenBySHOW_NavigationNodes()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4585], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4587], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final ScriptString GetSpectatorDescription()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4589], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void GetSpectatorHealthInfo(int* Health, int* MaxHealth)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = *Health;
		*cast(int*)&params[4] = *MaxHealth;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4591], params.ptr, cast(void*)0);
		*Health = *cast(int*)params.ptr;
		*MaxHealth = *cast(int*)&params[4];
	}
}
