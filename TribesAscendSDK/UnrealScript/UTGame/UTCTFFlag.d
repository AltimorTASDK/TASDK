module UnrealScript.UTGame.UTCTFFlag;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Actor;

extern(C++) interface UTCTFFlag : UTCarriedObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInstanceConstant) MICArray() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 776); }
			float LastLocationPingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
			Vector HoverboardingClothVelClamp() { return *cast(Vector*)(cast(size_t)cast(void*)this + 800); }
			Vector RunningClothVelClamp() { return *cast(Vector*)(cast(size_t)cast(void*)this + 788); }
			ParticleSystem RespawnEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 768); }
		}
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44545], params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44547], cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44549], params.ptr, cast(void*)0);
	}
	void OnBaseChainChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44553], cast(void*)0, cast(void*)0);
	}
	bool ShouldMinimapRenderFor(PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44555], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ClientReturnedHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44558], cast(void*)0, cast(void*)0);
	}
	void SetHolder(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44559], params.ptr, cast(void*)0);
	}
	bool ValidHolder(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44568], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SameTeamTouch(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44572], params.ptr, cast(void*)0);
	}
	void CustomRespawnEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44574], cast(void*)0, cast(void*)0);
	}
	void bringUpBrightOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44576], cast(void*)0, cast(void*)0);
	}
	void CustomFadeOutEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44578], cast(void*)0, cast(void*)0);
	}
	void Drop(Controller Killer, bool bNoThrow)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(bool*)&params[4] = bNoThrow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44603], params.ptr, cast(void*)0);
	}
	void SetFlagPropertiesToStationaryFlagState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44606], cast(void*)0, cast(void*)0);
	}
	void SetFlagDynamicLightToNotBeDynamic()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44607], cast(void*)0, cast(void*)0);
	}
}
