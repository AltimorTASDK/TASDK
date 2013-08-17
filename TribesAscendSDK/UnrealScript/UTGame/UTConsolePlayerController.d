module UnrealScript.UTGame.UTConsolePlayerController;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTPlayerController;

extern(C++) interface UTConsolePlayerController : UTPlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTConsolePlayerController")); }
	private static __gshared UTConsolePlayerController mDefaultProperties;
	@property final static UTConsolePlayerController DefaultProperties() { mixin(MGDPC("UTConsolePlayerController", "UTConsolePlayerController UTGame.Default__UTConsolePlayerController")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdateRotation;
			ScriptFunction mAimingHelp;
			ScriptFunction mAimHelpModifier;
			ScriptFunction mPerformedUseAction;
			ScriptFunction mClientSmartUse;
			ScriptFunction mClientRestart;
			ScriptFunction mPrevWeapon;
			ScriptFunction mNextWeapon;
			ScriptFunction mResetPlayerMovementInput;
		}
		public @property static final
		{
			ScriptFunction UpdateRotation() { mixin(MGF("mUpdateRotation", "Function UTGame.UTConsolePlayerController.UpdateRotation")); }
			ScriptFunction AimingHelp() { mixin(MGF("mAimingHelp", "Function UTGame.UTConsolePlayerController.AimingHelp")); }
			ScriptFunction AimHelpModifier() { mixin(MGF("mAimHelpModifier", "Function UTGame.UTConsolePlayerController.AimHelpModifier")); }
			ScriptFunction PerformedUseAction() { mixin(MGF("mPerformedUseAction", "Function UTGame.UTConsolePlayerController.PerformedUseAction")); }
			ScriptFunction ClientSmartUse() { mixin(MGF("mClientSmartUse", "Function UTGame.UTConsolePlayerController.ClientSmartUse")); }
			ScriptFunction ClientRestart() { mixin(MGF("mClientRestart", "Function UTGame.UTConsolePlayerController.ClientRestart")); }
			ScriptFunction PrevWeapon() { mixin(MGF("mPrevWeapon", "Function UTGame.UTConsolePlayerController.PrevWeapon")); }
			ScriptFunction NextWeapon() { mixin(MGF("mNextWeapon", "Function UTGame.UTConsolePlayerController.NextWeapon")); }
			ScriptFunction ResetPlayerMovementInput() { mixin(MGF("mResetPlayerMovementInput", "Function UTGame.UTConsolePlayerController.ResetPlayerMovementInput")); }
		}
	}
	struct ProfileSettingToUE3BindingDatum
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTConsolePlayerController.ProfileSettingToUE3BindingDatum")); }
		@property final auto ref
		{
			ScriptName UE3BindingName() { mixin(MGPS("ScriptName", 8)); }
			ScriptName ProfileSettingName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	static struct PlayerWalking
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTConsolePlayerController.PlayerWalking")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UTConsolePlayerController.ProfileSettingToUE3BindingDatum) ProfileSettingToUE3BindingMapping360() { mixin(MGPC("ScriptArray!(UTConsolePlayerController.ProfileSettingToUE3BindingDatum)", 2180)); }
			ScriptArray!(UTConsolePlayerController.ProfileSettingToUE3BindingDatum) ProfileSettingToUE3BindingMappingPS3() { mixin(MGPC("ScriptArray!(UTConsolePlayerController.ProfileSettingToUE3BindingDatum)", 2192)); }
		}
		bool bDebugTargetAdhesion() { mixin(MGBPC(2176, 0x2)); }
		bool bDebugTargetAdhesion(bool val) { mixin(MSBPC(2176, 0x2)); }
		bool bTargetAdhesionEnabled() { mixin(MGBPC(2176, 0x1)); }
		bool bTargetAdhesionEnabled(bool val) { mixin(MSBPC(2176, 0x1)); }
	}
final:
	void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRotation, params.ptr, cast(void*)0);
	}
	bool AimingHelp(bool bInstantHit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bInstantHit;
		(cast(ScriptObject)this).ProcessEvent(Functions.AimingHelp, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	float AimHelpModifier()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.AimHelpModifier, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool PerformedUseAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformedUseAction, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClientSmartUse()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSmartUse, cast(void*)0, cast(void*)0);
	}
	void ClientRestart(Pawn NewPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientRestart, params.ptr, cast(void*)0);
	}
	void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PrevWeapon, cast(void*)0, cast(void*)0);
	}
	void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NextWeapon, cast(void*)0, cast(void*)0);
	}
	void ResetPlayerMovementInput()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetPlayerMovementInput, cast(void*)0, cast(void*)0);
	}
}
