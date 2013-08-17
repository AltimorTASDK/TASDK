module UnrealScript.TribesGame.TrConsolePlayerController;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrConsolePlayerController : TrPlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrConsolePlayerController")()); }
	private static __gshared TrConsolePlayerController mDefaultProperties;
	@property final static TrConsolePlayerController DefaultProperties() { mixin(MGDPC!(TrConsolePlayerController, "TrConsolePlayerController TribesGame.Default__TrConsolePlayerController")()); }
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
			ScriptFunction UpdateRotation() { mixin(MGF!("mUpdateRotation", "Function TribesGame.TrConsolePlayerController.UpdateRotation")()); }
			ScriptFunction AimingHelp() { mixin(MGF!("mAimingHelp", "Function TribesGame.TrConsolePlayerController.AimingHelp")()); }
			ScriptFunction AimHelpModifier() { mixin(MGF!("mAimHelpModifier", "Function TribesGame.TrConsolePlayerController.AimHelpModifier")()); }
			ScriptFunction PerformedUseAction() { mixin(MGF!("mPerformedUseAction", "Function TribesGame.TrConsolePlayerController.PerformedUseAction")()); }
			ScriptFunction ClientSmartUse() { mixin(MGF!("mClientSmartUse", "Function TribesGame.TrConsolePlayerController.ClientSmartUse")()); }
			ScriptFunction ClientRestart() { mixin(MGF!("mClientRestart", "Function TribesGame.TrConsolePlayerController.ClientRestart")()); }
			ScriptFunction PrevWeapon() { mixin(MGF!("mPrevWeapon", "Function TribesGame.TrConsolePlayerController.PrevWeapon")()); }
			ScriptFunction NextWeapon() { mixin(MGF!("mNextWeapon", "Function TribesGame.TrConsolePlayerController.NextWeapon")()); }
			ScriptFunction ResetPlayerMovementInput() { mixin(MGF!("mResetPlayerMovementInput", "Function TribesGame.TrConsolePlayerController.ResetPlayerMovementInput")()); }
		}
	}
	struct ProfileSettingToUE3BindingDatum
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrConsolePlayerController.ProfileSettingToUE3BindingDatum")()); }
		@property final auto ref
		{
			ScriptName UE3BindingName() { mixin(MGPS!("ScriptName", 8)()); }
			ScriptName ProfileSettingName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	static struct PlayerWalking
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrConsolePlayerController.PlayerWalking")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrConsolePlayerController.ProfileSettingToUE3BindingDatum) ProfileSettingToUE3BindingMapping360() { mixin(MGPC!("ScriptArray!(TrConsolePlayerController.ProfileSettingToUE3BindingDatum)", 3436)()); }
			ScriptArray!(TrConsolePlayerController.ProfileSettingToUE3BindingDatum) ProfileSettingToUE3BindingMappingPS3() { mixin(MGPC!("ScriptArray!(TrConsolePlayerController.ProfileSettingToUE3BindingDatum)", 3448)()); }
		}
		bool bDebugTargetAdhesion() { mixin(MGBPC!(3432, 0x2)()); }
		bool bDebugTargetAdhesion(bool val) { mixin(MSBPC!(3432, 0x2)()); }
		bool bTargetAdhesionEnabled() { mixin(MGBPC!(3432, 0x1)()); }
		bool bTargetAdhesionEnabled(bool val) { mixin(MSBPC!(3432, 0x1)()); }
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
