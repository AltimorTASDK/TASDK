module UnrealScript.TribesGame.TrConsolePlayerController;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrConsolePlayerController : TrPlayerController
{
	struct ProfileSettingToUE3BindingDatum
	{
		public @property final auto ref ScriptName UE3BindingName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __UE3BindingName[8];
		public @property final auto ref ScriptName ProfileSettingName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ProfileSettingName[8];
	}
	public @property final auto ref ScriptArray!(TrConsolePlayerController.ProfileSettingToUE3BindingDatum) ProfileSettingToUE3BindingMapping360() { return *cast(ScriptArray!(TrConsolePlayerController.ProfileSettingToUE3BindingDatum)*)(cast(size_t)cast(void*)this + 3436); }
	public @property final auto ref ScriptArray!(TrConsolePlayerController.ProfileSettingToUE3BindingDatum) ProfileSettingToUE3BindingMappingPS3() { return *cast(ScriptArray!(TrConsolePlayerController.ProfileSettingToUE3BindingDatum)*)(cast(size_t)cast(void*)this + 3448); }
	public @property final bool bDebugTargetAdhesion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 3432) & 0x2) != 0; }
	public @property final bool bDebugTargetAdhesion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 3432) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 3432) &= ~0x2; } return val; }
	public @property final bool bTargetAdhesionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 3432) & 0x1) != 0; }
	public @property final bool bTargetAdhesionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 3432) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 3432) &= ~0x1; } return val; }
	final void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77889], params.ptr, cast(void*)0);
	}
	final bool AimingHelp(bool bInstantHit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bInstantHit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77895], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float AimHelpModifier()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77898], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool PerformedUseAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77900], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ClientSmartUse()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77902], cast(void*)0, cast(void*)0);
	}
	final void ClientRestart(Pawn NewPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77903], params.ptr, cast(void*)0);
	}
	final void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77905], cast(void*)0, cast(void*)0);
	}
	final void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77906], cast(void*)0, cast(void*)0);
	}
	final void ResetPlayerMovementInput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77907], cast(void*)0, cast(void*)0);
	}
}
