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
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInstanceConstant) MICArray() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 776); }
			float m_fRageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 928); }
			float m_fDamageMomentumDampingWhileFalling() { return *cast(float*)(cast(size_t)cast(void*)this + 924); }
			int m_nDropFlagPingThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 920); }
			float m_fTeammatePassMaxDistanceSq() { return *cast(float*)(cast(size_t)cast(void*)this + 916); }
			int m_nNumBounces() { return *cast(int*)(cast(size_t)cast(void*)this + 912); }
			int m_nNumBouncesBeforeSlide() { return *cast(int*)(cast(size_t)cast(void*)this + 908); }
			float m_fIgnoreSameTeamTouch() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
			MaterialInstanceConstant m_MarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 900); }
			TrCollisionProxy m_CollisionProxyLevel3() { return *cast(TrCollisionProxy*)(cast(size_t)cast(void*)this + 896); }
			TrCollisionProxy m_CollisionProxyLevel2() { return *cast(TrCollisionProxy*)(cast(size_t)cast(void*)this + 892); }
			TrCollisionProxy m_CollisionProxyLevel1() { return *cast(TrCollisionProxy*)(cast(size_t)cast(void*)this + 888); }
			float m_fBounceDampingPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 884); }
			float m_fForwardThrowVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 880); }
			float m_fInheritVelocityPct() { return *cast(float*)(cast(size_t)cast(void*)this + 876); }
			int m_TimeAwaySeconds() { return *cast(int*)(cast(size_t)cast(void*)this + 872); }
			Vector LastCameraPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 860); }
			Vector LastCameraDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 848); }
			Vector LastScreenLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 836); }
			float m_FlagIconAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
			float m_fFriction() { return *cast(float*)(cast(size_t)cast(void*)this + 828); }
			float m_fMass() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
			float LastLocationPingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
			Vector HoverboardingClothVelClamp() { return *cast(Vector*)(cast(size_t)cast(void*)this + 800); }
			Vector RunningClothVelClamp() { return *cast(Vector*)(cast(size_t)cast(void*)this + 788); }
			ParticleSystem RespawnEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 768); }
		}
		bool m_bPassToTeammatesEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x80) != 0; }
		bool m_bPassToTeammatesEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x80; } return val; }
		bool m_bBounceSlideEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x40) != 0; }
		bool m_bBounceSlideEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x40; } return val; }
		bool bWasFlagReturned() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x20) != 0; }
		bool bWasFlagReturned(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x20; } return val; }
		bool bWasClothEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x10) != 0; }
		bool bWasClothEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x10; } return val; }
		bool bRespawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x8) != 0; }
		bool bRespawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x8; } return val; }
		bool bFadingOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x4) != 0; }
		bool bFadingOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x4; } return val; }
		bool bBringDownFromBright() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x2) != 0; }
		bool bBringDownFromBright(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x2; } return val; }
		bool bBringUpBright() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x1) != 0; }
		bool bBringUpBright(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x1; } return val; }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88436], params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88438], cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88441], params.ptr, cast(void*)0);
	}
	void OnBaseChainChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88448], cast(void*)0, cast(void*)0);
	}
	bool ShouldMinimapRenderFor(PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88451], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ClientReturnedHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88454], cast(void*)0, cast(void*)0);
	}
	void SetHolder(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88455], params.ptr, cast(void*)0);
	}
	bool ValidHolder(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88463], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SameTeamTouch(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88468], params.ptr, cast(void*)0);
	}
	void CustomRespawnEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88470], cast(void*)0, cast(void*)0);
	}
	void bringUpBrightOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88472], cast(void*)0, cast(void*)0);
	}
	void CustomFadeOutEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88474], cast(void*)0, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88509], params.ptr, cast(void*)0);
	}
	void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88517], params.ptr, cast(void*)0);
	}
	void Drop(Controller Killer, bool bNoThrow)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(bool*)&params[4] = bNoThrow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88519], params.ptr, cast(void*)0);
	}
	void SetFlagPropertiesToStationaryFlagState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88529], cast(void*)0, cast(void*)0);
	}
	void SetFlagDynamicLightToNotBeDynamic()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88530], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88531], cast(void*)0, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88533], params.ptr, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
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
	ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88553], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetSpectatorDescription()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88555], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void OnCollisionProxyTouched(TrPawn TRP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = TRP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[88557], params.ptr, cast(void*)0);
	}
}
