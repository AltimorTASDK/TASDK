module UnrealScript.UTGame.UTConsolePlayerController;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTPlayerController;

extern(C++) interface UTConsolePlayerController : UTPlayerController
{
public extern(D):
	struct ProfileSettingToUE3BindingDatum
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			ScriptName UE3BindingName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			ScriptName ProfileSettingName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UTConsolePlayerController.ProfileSettingToUE3BindingDatum) ProfileSettingToUE3BindingMapping360() { return *cast(ScriptArray!(UTConsolePlayerController.ProfileSettingToUE3BindingDatum)*)(cast(size_t)cast(void*)this + 2180); }
			ScriptArray!(UTConsolePlayerController.ProfileSettingToUE3BindingDatum) ProfileSettingToUE3BindingMappingPS3() { return *cast(ScriptArray!(UTConsolePlayerController.ProfileSettingToUE3BindingDatum)*)(cast(size_t)cast(void*)this + 2192); }
		}
		bool bDebugTargetAdhesion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2176) & 0x2) != 0; }
		bool bDebugTargetAdhesion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2176) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2176) &= ~0x2; } return val; }
		bool bTargetAdhesionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2176) & 0x1) != 0; }
		bool bTargetAdhesionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2176) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2176) &= ~0x1; } return val; }
	}
final:
	void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44105], params.ptr, cast(void*)0);
	}
	bool AimingHelp(bool bInstantHit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bInstantHit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44112], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float AimHelpModifier()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44115], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool PerformedUseAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44117], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClientSmartUse()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44119], cast(void*)0, cast(void*)0);
	}
	void ClientRestart(Pawn NewPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44120], params.ptr, cast(void*)0);
	}
	void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44122], cast(void*)0, cast(void*)0);
	}
	void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44123], cast(void*)0, cast(void*)0);
	}
	void ResetPlayerMovementInput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44124], cast(void*)0, cast(void*)0);
	}
}
