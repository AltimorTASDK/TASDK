module UnrealScript.UTGame.UTConsolePlayerController;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTPlayerController;

extern(C++) interface UTConsolePlayerController : UTPlayerController
{
	struct ProfileSettingToUE3BindingDatum
	{
		public @property final auto ref ScriptName UE3BindingName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __UE3BindingName[8];
		public @property final auto ref ScriptName ProfileSettingName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ProfileSettingName[8];
	}
	public @property final auto ref ScriptArray!(UTConsolePlayerController.ProfileSettingToUE3BindingDatum) ProfileSettingToUE3BindingMapping360() { return *cast(ScriptArray!(UTConsolePlayerController.ProfileSettingToUE3BindingDatum)*)(cast(size_t)cast(void*)this + 2180); }
	public @property final auto ref ScriptArray!(UTConsolePlayerController.ProfileSettingToUE3BindingDatum) ProfileSettingToUE3BindingMappingPS3() { return *cast(ScriptArray!(UTConsolePlayerController.ProfileSettingToUE3BindingDatum)*)(cast(size_t)cast(void*)this + 2192); }
	public @property final bool bDebugTargetAdhesion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2176) & 0x2) != 0; }
	public @property final bool bDebugTargetAdhesion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2176) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2176) &= ~0x2; } return val; }
	public @property final bool bTargetAdhesionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2176) & 0x1) != 0; }
	public @property final bool bTargetAdhesionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2176) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2176) &= ~0x1; } return val; }
	final void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44105], params.ptr, cast(void*)0);
	}
	final bool AimingHelp(bool bInstantHit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bInstantHit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44112], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float AimHelpModifier()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44115], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool PerformedUseAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44117], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ClientSmartUse()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44119], cast(void*)0, cast(void*)0);
	}
	final void ClientRestart(Pawn NewPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44120], params.ptr, cast(void*)0);
	}
	final void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44122], cast(void*)0, cast(void*)0);
	}
	final void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44123], cast(void*)0, cast(void*)0);
	}
	final void ResetPlayerMovementInput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44124], cast(void*)0, cast(void*)0);
	}
}
