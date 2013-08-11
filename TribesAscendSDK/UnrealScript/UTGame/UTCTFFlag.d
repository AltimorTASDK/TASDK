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
	public @property final auto ref ScriptArray!(MaterialInstanceConstant) MICArray() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 776); }
	public @property final auto ref float LastLocationPingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
	public @property final auto ref Vector HoverboardingClothVelClamp() { return *cast(Vector*)(cast(size_t)cast(void*)this + 800); }
	public @property final auto ref Vector RunningClothVelClamp() { return *cast(Vector*)(cast(size_t)cast(void*)this + 788); }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44545], params.ptr, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44547], cast(void*)0, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44549], params.ptr, cast(void*)0);
	}
	final void OnBaseChainChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44553], cast(void*)0, cast(void*)0);
	}
	final bool ShouldMinimapRenderFor(PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44555], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ClientReturnedHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44558], cast(void*)0, cast(void*)0);
	}
	final void SetHolder(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44559], params.ptr, cast(void*)0);
	}
	final bool ValidHolder(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44568], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SameTeamTouch(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44572], params.ptr, cast(void*)0);
	}
	final void CustomRespawnEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44574], cast(void*)0, cast(void*)0);
	}
	final void bringUpBrightOff()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44576], cast(void*)0, cast(void*)0);
	}
	final void CustomFadeOutEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44578], cast(void*)0, cast(void*)0);
	}
	final void Drop(Controller Killer, bool bNoThrow)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(bool*)&params[4] = bNoThrow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44603], params.ptr, cast(void*)0);
	}
	final void SetFlagPropertiesToStationaryFlagState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44606], cast(void*)0, cast(void*)0);
	}
	final void SetFlagDynamicLightToNotBeDynamic()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44607], cast(void*)0, cast(void*)0);
	}
}
