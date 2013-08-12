module UnrealScript.UTGame.UTConsolePlayerController;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTPlayerController;

extern(C++) interface UTConsolePlayerController : UTPlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTConsolePlayerController")); }
	private static __gshared UTConsolePlayerController mDefaultProperties;
	@property final static UTConsolePlayerController DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTConsolePlayerController)("UTConsolePlayerController UTGame.Default__UTConsolePlayerController")); }
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
			ScriptFunction UpdateRotation() { return mUpdateRotation ? mUpdateRotation : (mUpdateRotation = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerController.UpdateRotation")); }
			ScriptFunction AimingHelp() { return mAimingHelp ? mAimingHelp : (mAimingHelp = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerController.AimingHelp")); }
			ScriptFunction AimHelpModifier() { return mAimHelpModifier ? mAimHelpModifier : (mAimHelpModifier = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerController.AimHelpModifier")); }
			ScriptFunction PerformedUseAction() { return mPerformedUseAction ? mPerformedUseAction : (mPerformedUseAction = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerController.PerformedUseAction")); }
			ScriptFunction ClientSmartUse() { return mClientSmartUse ? mClientSmartUse : (mClientSmartUse = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerController.ClientSmartUse")); }
			ScriptFunction ClientRestart() { return mClientRestart ? mClientRestart : (mClientRestart = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerController.ClientRestart")); }
			ScriptFunction PrevWeapon() { return mPrevWeapon ? mPrevWeapon : (mPrevWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerController.PrevWeapon")); }
			ScriptFunction NextWeapon() { return mNextWeapon ? mNextWeapon : (mNextWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerController.NextWeapon")); }
			ScriptFunction ResetPlayerMovementInput() { return mResetPlayerMovementInput ? mResetPlayerMovementInput : (mResetPlayerMovementInput = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTConsolePlayerController.ResetPlayerMovementInput")); }
		}
	}
	struct ProfileSettingToUE3BindingDatum
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTConsolePlayerController.ProfileSettingToUE3BindingDatum")); }
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
