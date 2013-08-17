module UnrealScript.TribesGame.TrProj_Mine;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_Mine")); }
	private static __gshared TrProj_Mine mDefaultProperties;
	@property final static TrProj_Mine DefaultProperties() { mixin(MGDPC("TrProj_Mine", "TrProj_Mine TribesGame.Default__TrProj_Mine")); }
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
			ScriptFunction IsAliveAndWell() { mixin(MGF("mIsAliveAndWell", "Function TribesGame.TrProj_Mine.IsAliveAndWell")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function TribesGame.TrProj_Mine.ReplicatedEvent")); }
			ScriptFunction OnPRIReplicated() { mixin(MGF("mOnPRIReplicated", "Function TribesGame.TrProj_Mine.OnPRIReplicated")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrProj_Mine.PostBeginPlay")); }
			ScriptFunction ArmedTimer() { mixin(MGF("mArmedTimer", "Function TribesGame.TrProj_Mine.ArmedTimer")); }
			ScriptFunction HitWall() { mixin(MGF("mHitWall", "Function TribesGame.TrProj_Mine.HitWall")); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF("mTakeRadiusDamage", "Function TribesGame.TrProj_Mine.TakeRadiusDamage")); }
			ScriptFunction TakeDamage() { mixin(MGF("mTakeDamage", "Function TribesGame.TrProj_Mine.TakeDamage")); }
			ScriptFunction InitProjectile() { mixin(MGF("mInitProjectile", "Function TribesGame.TrProj_Mine.InitProjectile")); }
			ScriptFunction PawnEnteredDetonationArea() { mixin(MGF("mPawnEnteredDetonationArea", "Function TribesGame.TrProj_Mine.PawnEnteredDetonationArea")); }
			ScriptFunction MeetsDetonationRequirements() { mixin(MGF("mMeetsDetonationRequirements", "Function TribesGame.TrProj_Mine.MeetsDetonationRequirements")); }
			ScriptFunction PawnLeftDetonationArea() { mixin(MGF("mPawnLeftDetonationArea", "Function TribesGame.TrProj_Mine.PawnLeftDetonationArea")); }
			ScriptFunction NativeExplode() { mixin(MGF("mNativeExplode", "Function TribesGame.TrProj_Mine.NativeExplode")); }
			ScriptFunction ProcessTouch() { mixin(MGF("mProcessTouch", "Function TribesGame.TrProj_Mine.ProcessTouch")); }
			ScriptFunction Bounce() { mixin(MGF("mBounce", "Function TribesGame.TrProj_Mine.Bounce")); }
			ScriptFunction ShutDown() { mixin(MGF("mShutDown", "Function TribesGame.TrProj_Mine.ShutDown")); }
			ScriptFunction GetMarker() { mixin(MGF("mGetMarker", "Function TribesGame.TrProj_Mine.GetMarker")); }
			ScriptFunction PostRenderFor() { mixin(MGF("mPostRenderFor", "Function TribesGame.TrProj_Mine.PostRenderFor")); }
		}
	}
	@property final
	{
		auto ref
		{
			PlayerReplicationInfo r_OwnerPRI() { mixin(MGPC("PlayerReplicationInfo", 888)); }
			int m_nIconStackId() { mixin(MGPC("int", 896)); }
			ScriptArray!(Pawn) m_PotentialTargets() { mixin(MGPC("ScriptArray!(Pawn)", 840)); }
			MaterialInstanceConstant m_MarkerMIC() { mixin(MGPC("MaterialInstanceConstant", 892)); }
			int m_nMarkerOffset() { mixin(MGPC("int", 884)); }
			float m_fShowHeaderUntil() { mixin(MGPC("float", 880)); }
			float LastPostRenderTraceTime() { mixin(MGPC("float", 876)); }
			ScriptString m_sScreenName() { mixin(MGPC("ScriptString", 864)); }
			int m_nNumBouncesBeforeDetonateObsolete() { mixin(MGPC("int", 860)); }
			int m_nNumBounces() { mixin(MGPC("int", 856)); }
			float m_fMaxFloorZ() { mixin(MGPC("float", 852)); }
			TrMineCollisionProxy m_CollisionProxy() { mixin(MGPC("TrMineCollisionProxy", 836)); }
			float m_fDetonationHeight() { mixin(MGPC("float", 832)); }
			float m_fDetonationRadius() { mixin(MGPC("float", 828)); }
			float m_fDeploySeconds() { mixin(MGPC("float", 824)); }
			SoundCue WallImpactSound() { mixin(MGPC("SoundCue", 816)); }
		}
		bool m_bIsPostRendered() { mixin(MGBPC(820, 0x10)); }
		bool m_bIsPostRendered(bool val) { mixin(MSBPC(820, 0x10)); }
		bool bPostRenderTraceSucceeded() { mixin(MGBPC(820, 0x8)); }
		bool bPostRenderTraceSucceeded(bool val) { mixin(MSBPC(820, 0x8)); }
		bool m_bDrawOwnerName() { mixin(MGBPC(820, 0x4)); }
		bool m_bDrawOwnerName(bool val) { mixin(MSBPC(820, 0x4)); }
		bool m_bUsesDetonationProxy() { mixin(MGBPC(820, 0x2)); }
		bool m_bUsesDetonationProxy(bool val) { mixin(MSBPC(820, 0x2)); }
		bool m_bArmed() { mixin(MGBPC(820, 0x1)); }
		bool m_bArmed(bool val) { mixin(MSBPC(820, 0x1)); }
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
	void TakeRadiusDamage(Controller EventInstigator, float BaseDamage, float InDamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float* DamageFalloffExponent = null)
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
		if (DamageFalloffExponent !is null)
			*cast(float*)&params[40] = *DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeRadiusDamage, params.ptr, cast(void*)0);
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null, Actor* DamageCauser = null)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[36] = *HitInfo;
		if (DamageCauser !is null)
			*cast(Actor*)&params[64] = *DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
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
