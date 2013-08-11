module UnrealScript.TribesGame.TrFlagBase;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.HUD;

extern(C++) interface TrFlagBase : UTCarriedObject
{
	public @property final auto ref ScriptArray!(MaterialInstanceConstant) MICArray() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 776); }
	public @property final auto ref float m_fRageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 928); }
	public @property final auto ref float m_fDamageMomentumDampingWhileFalling() { return *cast(float*)(cast(size_t)cast(void*)this + 924); }
	public @property final auto ref int m_nDropFlagPingThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 920); }
	public @property final auto ref float m_fTeammatePassMaxDistanceSq() { return *cast(float*)(cast(size_t)cast(void*)this + 916); }
	public @property final auto ref int m_nNumBounces() { return *cast(int*)(cast(size_t)cast(void*)this + 912); }
	public @property final auto ref int m_nNumBouncesBeforeSlide() { return *cast(int*)(cast(size_t)cast(void*)this + 908); }
	public @property final auto ref float m_fIgnoreSameTeamTouch() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
	public @property final auto ref MaterialInstanceConstant m_MarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 900); }
	public @property final auto ref TrCollisionProxy m_CollisionProxyLevel3() { return *cast(TrCollisionProxy*)(cast(size_t)cast(void*)this + 896); }
	public @property final auto ref TrCollisionProxy m_CollisionProxyLevel2() { return *cast(TrCollisionProxy*)(cast(size_t)cast(void*)this + 892); }
	public @property final auto ref TrCollisionProxy m_CollisionProxyLevel1() { return *cast(TrCollisionProxy*)(cast(size_t)cast(void*)this + 888); }
	public @property final auto ref float m_fBounceDampingPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 884); }
	public @property final auto ref float m_fForwardThrowVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 880); }
	public @property final auto ref float m_fInheritVelocityPct() { return *cast(float*)(cast(size_t)cast(void*)this + 876); }
	public @property final auto ref int m_TimeAwaySeconds() { return *cast(int*)(cast(size_t)cast(void*)this + 872); }
	public @property final auto ref Vector LastCameraPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 860); }
	public @property final auto ref Vector LastCameraDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 848); }
	public @property final auto ref Vector LastScreenLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 836); }
	public @property final auto ref float m_FlagIconAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
	public @property final auto ref float m_fFriction() { return *cast(float*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref float m_fMass() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
	public @property final auto ref float LastLocationPingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
	public @property final auto ref Vector HoverboardingClothVelClamp() { return *cast(Vector*)(cast(size_t)cast(void*)this + 800); }
	public @property final auto ref Vector RunningClothVelClamp() { return *cast(Vector*)(cast(size_t)cast(void*)this + 788); }
	public @property final bool m_bPassToTeammatesEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x80) != 0; }
	public @property final bool m_bPassToTeammatesEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x80; } return val; }
	public @property final bool m_bBounceSlideEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x40) != 0; }
	public @property final bool m_bBounceSlideEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x40; } return val; }
	public @property final bool bWasFlagReturned() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x20) != 0; }
	public @property final bool bWasFlagReturned(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x20; } return val; }
	public @property final bool bWasClothEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x10) != 0; }
	public @property final bool bWasClothEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x10; } return val; }
	public @property final bool bRespawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x8) != 0; }
	public @property final bool bRespawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x8; } return val; }
	public @property final bool bFadingOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x4) != 0; }
	public @property final bool bFadingOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x4; } return val; }
	public @property final bool bBringDownFromBright() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x2) != 0; }
	public @property final bool bBringDownFromBright(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x2; } return val; }
	public @property final bool bBringUpBright() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x1) != 0; }
	public @property final bool bBringUpBright(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x1; } return val; }
	public @property final auto ref ParticleSystem RespawnEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 768); }
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88436], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88438], cast(void*)0, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88441], params.ptr, cast(void*)0);
	}
	final void OnBaseChainChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88448], cast(void*)0, cast(void*)0);
	}
	final bool ShouldMinimapRenderFor(PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88451], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ClientReturnedHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88454], cast(void*)0, cast(void*)0);
	}
	final void SetHolder(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88455], params.ptr, cast(void*)0);
	}
	final bool ValidHolder(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88463], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SameTeamTouch(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88468], params.ptr, cast(void*)0);
	}
	final void CustomRespawnEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88470], cast(void*)0, cast(void*)0);
	}
	final void bringUpBrightOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88472], cast(void*)0, cast(void*)0);
	}
	final void CustomFadeOutEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88474], cast(void*)0, cast(void*)0);
	}
	final void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88509], params.ptr, cast(void*)0);
	}
	final void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88517], params.ptr, cast(void*)0);
	}
	final void Drop(Controller Killer, bool bNoThrow)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(bool*)&params[4] = bNoThrow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88519], params.ptr, cast(void*)0);
	}
	final void SetFlagPropertiesToStationaryFlagState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88529], cast(void*)0, cast(void*)0);
	}
	final void SetFlagDynamicLightToNotBeDynamic()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88530], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88531], cast(void*)0, cast(void*)0);
	}
	final void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88533], params.ptr, cast(void*)0);
	}
	final void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88548], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88553], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final ScriptString GetSpectatorDescription()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88555], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void OnCollisionProxyTouched(TrPawn TRP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = TRP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88557], params.ptr, cast(void*)0);
	}
}
