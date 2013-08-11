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
	public @property final auto ref PlayerReplicationInfo r_OwnerPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 888); }
	public @property final auto ref int m_nIconStackId() { return *cast(int*)(cast(size_t)cast(void*)this + 896); }
	public @property final auto ref ScriptArray!(Pawn) m_PotentialTargets() { return *cast(ScriptArray!(Pawn)*)(cast(size_t)cast(void*)this + 840); }
	public @property final auto ref MaterialInstanceConstant m_MarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 892); }
	public @property final auto ref int m_nMarkerOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 884); }
	public @property final auto ref float m_fShowHeaderUntil() { return *cast(float*)(cast(size_t)cast(void*)this + 880); }
	public @property final auto ref float LastPostRenderTraceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 876); }
	public @property final auto ref ScriptString m_sScreenName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 864); }
	public @property final auto ref int m_nNumBouncesBeforeDetonateObsolete() { return *cast(int*)(cast(size_t)cast(void*)this + 860); }
	public @property final auto ref int m_nNumBounces() { return *cast(int*)(cast(size_t)cast(void*)this + 856); }
	public @property final auto ref float m_fMaxFloorZ() { return *cast(float*)(cast(size_t)cast(void*)this + 852); }
	public @property final auto ref TrMineCollisionProxy m_CollisionProxy() { return *cast(TrMineCollisionProxy*)(cast(size_t)cast(void*)this + 836); }
	public @property final auto ref float m_fDetonationHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
	public @property final auto ref float m_fDetonationRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref float m_fDeploySeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
	public @property final bool m_bIsPostRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x10) != 0; }
	public @property final bool m_bIsPostRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x10; } return val; }
	public @property final bool bPostRenderTraceSucceeded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x8) != 0; }
	public @property final bool bPostRenderTraceSucceeded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x8; } return val; }
	public @property final bool m_bDrawOwnerName() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x4) != 0; }
	public @property final bool m_bDrawOwnerName(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x4; } return val; }
	public @property final bool m_bUsesDetonationProxy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x2) != 0; }
	public @property final bool m_bUsesDetonationProxy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x2; } return val; }
	public @property final bool m_bArmed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 820) & 0x1) != 0; }
	public @property final bool m_bArmed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 820) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 820) &= ~0x1; } return val; }
	public @property final auto ref SoundCue WallImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 816); }
	final bool IsAliveAndWell()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96539], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107930], params.ptr, cast(void*)0);
	}
	final void OnPRIReplicated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107932], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107934], cast(void*)0, cast(void*)0);
	}
	final void ArmedTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107936], cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107938], params.ptr, cast(void*)0);
	}
	final void TakeRadiusDamage(Controller EventInstigator, float BaseDamage, float InDamageRadius, ScriptClass DamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = InDamageRadius;
		*cast(ScriptClass*)&params[12] = DamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107943], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107954], params.ptr, cast(void*)0);
	}
	final void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107962], params.ptr, cast(void*)0);
	}
	final void PawnEnteredDetonationArea(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107965], params.ptr, cast(void*)0);
	}
	final bool MeetsDetonationRequirements(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107967], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PawnLeftDetonationArea(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107970], params.ptr, cast(void*)0);
	}
	final void NativeExplode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107972], params.ptr, cast(void*)0);
	}
	final void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107975], params.ptr, cast(void*)0);
	}
	final void Bounce(Actor Other, Vector WallNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = WallNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107979], params.ptr, cast(void*)0);
	}
	final void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107982], cast(void*)0, cast(void*)0);
	}
	final Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107983], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	final void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[107985], params.ptr, cast(void*)0);
	}
}
