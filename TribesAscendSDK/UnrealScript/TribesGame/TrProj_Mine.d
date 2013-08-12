module UnrealScript.TribesGame.TrProj_Mine;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrMineCollisionProxy;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Mine : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_Mine")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsAliveAndWell;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mOnPRIReplicated;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mArmedTimer;
			ScriptFunction mHitWall;
			ScriptFunction mTakeRadiusDamage;
			ScriptFunction mTakeDamage;
			ScriptFunction mInitProjectile;
			ScriptFunction mPawnEnteredDetonationArea;
			ScriptFunction mMeetsDetonationRequirements;
			ScriptFunction mPawnLeftDetonationArea;
			ScriptFunction mNativeExplode;
			ScriptFunction mProcessTouch;
			ScriptFunction mBounce;
			ScriptFunction mShutDown;
			ScriptFunction mGetMarker;
			ScriptFunction mPostRenderFor;
		}
		public @property static final
		{
			ScriptFunction IsAliveAndWell() { return mIsAliveAndWell ? mIsAliveAndWell : (mIsAliveAndWell = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.IsAliveAndWell")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.ReplicatedEvent")); }
			ScriptFunction OnPRIReplicated() { return mOnPRIReplicated ? mOnPRIReplicated : (mOnPRIReplicated = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.OnPRIReplicated")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.PostBeginPlay")); }
			ScriptFunction ArmedTimer() { return mArmedTimer ? mArmedTimer : (mArmedTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.ArmedTimer")); }
			ScriptFunction HitWall() { return mHitWall ? mHitWall : (mHitWall = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.HitWall")); }
			ScriptFunction TakeRadiusDamage() { return mTakeRadiusDamage ? mTakeRadiusDamage : (mTakeRadiusDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.TakeRadiusDamage")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.TakeDamage")); }
			ScriptFunction InitProjectile() { return mInitProjectile ? mInitProjectile : (mInitProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.InitProjectile")); }
			ScriptFunction PawnEnteredDetonationArea() { return mPawnEnteredDetonationArea ? mPawnEnteredDetonationArea : (mPawnEnteredDetonationArea = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.PawnEnteredDetonationArea")); }
			ScriptFunction MeetsDetonationRequirements() { return mMeetsDetonationRequirements ? mMeetsDetonationRequirements : (mMeetsDetonationRequirements = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.MeetsDetonationRequirements")); }
			ScriptFunction PawnLeftDetonationArea() { return mPawnLeftDetonationArea ? mPawnLeftDetonationArea : (mPawnLeftDetonationArea = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.PawnLeftDetonationArea")); }
			ScriptFunction NativeExplode() { return mNativeExplode ? mNativeExplode : (mNativeExplode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.NativeExplode")); }
			ScriptFunction ProcessTouch() { return mProcessTouch ? mProcessTouch : (mProcessTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.ProcessTouch")); }
			ScriptFunction Bounce() { return mBounce ? mBounce : (mBounce = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.Bounce")); }
			ScriptFunction ShutDown() { return mShutDown ? mShutDown : (mShutDown = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.ShutDown")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.GetMarker")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Mine.PostRenderFor")); }
		}
	}
	@property final
	{
		auto ref
		{
			PlayerReplicationInfo r_OwnerPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 888); }
			int m_nIconStackId() { return *cast(int*)(cast(size_t)cast(void*)this + 896); }
			ScriptArray!(Pawn) m_PotentialTargets() { return *cast(ScriptArray!(Pawn)*)(cast(size_t)cast(void*)this + 840); }
			MaterialInstanceConstant m_MarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 892); }
			int m_nMarkerOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 884); }
			float m_fShowHeaderUntil() { return *cast(float*)(cast(size_t)cast(void*)this + 880); }
			float LastPostRenderTraceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 876); }
			ScriptString m_sScreenName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 864); }
			int m_nNumBouncesBeforeDetonateObsolete() { return *cast(int*)(cast(size_t)cast(void*)this + 860); }
			int m_nNumBounces() { return *cast(int*)(cast(size_t)cast(void*)this + 856); }
			float m_fMaxFloorZ() { return *cast(float*)(cast(size_t)cast(void*)this + 852); }
			TrMineCollisionProxy m_CollisionProxy() { return *cast(TrMineCollisionProxy*)(cast(size_t)cast(void*)this + 836); }
			float m_fDetonationHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
			float m_fDetonationRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 828); }
			float m_fDeploySeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
			SoundCue WallImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 816); }
		}
		bool m_bIsPostRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x10) != 0; }
		bool m_bIsPostRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x10; } return val; }
		bool bPostRenderTraceSucceeded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x8) != 0; }
		bool bPostRenderTraceSucceeded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x8; } return val; }
		bool m_bDrawOwnerName() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x4) != 0; }
		bool m_bDrawOwnerName(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x4; } return val; }
		bool m_bUsesDetonationProxy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x2) != 0; }
		bool m_bUsesDetonationProxy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x2; } return val; }
		bool m_bArmed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x1) != 0; }
		bool m_bArmed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x1; } return val; }
	}
final:
	bool IsAliveAndWell()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsAliveAndWell, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void OnPRIReplicated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPRIReplicated, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ArmedTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ArmedTimer, cast(void*)0, cast(void*)0);
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
	void TakeRadiusDamage(Controller EventInstigator, float BaseDamage, float InDamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = InDamageRadius;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeRadiusDamage, params.ptr, cast(void*)0);
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitProjectile, params.ptr, cast(void*)0);
	}
	void PawnEnteredDetonationArea(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredDetonationArea, params.ptr, cast(void*)0);
	}
	bool MeetsDetonationRequirements(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.MeetsDetonationRequirements, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PawnLeftDetonationArea(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnLeftDetonationArea, params.ptr, cast(void*)0);
	}
	void NativeExplode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.NativeExplode, params.ptr, cast(void*)0);
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
	void Bounce(Actor Other, Vector WallNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = WallNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Bounce, params.ptr, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShutDown, cast(void*)0, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
}
