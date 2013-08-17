module UnrealScript.UTGame.UTClientSideWeaponPawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTWeaponPawn;
import UnrealScript.Engine.Pawn;

extern(C++) interface UTClientSideWeaponPawn : UTWeaponPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTClientSideWeaponPawn")); }
	private static __gshared UTClientSideWeaponPawn mDefaultProperties;
	@property final static UTClientSideWeaponPawn DefaultProperties() { mixin(MGDPC("UTClientSideWeaponPawn", "UTClientSideWeaponPawn UTGame.Default__UTClientSideWeaponPawn")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreBeginPlay;
			ScriptFunction mAttachDriver;
			ScriptFunction mDetachDriver;
			ScriptFunction mTick;
		}
		public @property static final
		{
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function UTGame.UTClientSideWeaponPawn.PreBeginPlay")); }
			ScriptFunction AttachDriver() { mixin(MGF("mAttachDriver", "Function UTGame.UTClientSideWeaponPawn.AttachDriver")); }
			ScriptFunction DetachDriver() { mixin(MGF("mDetachDriver", "Function UTGame.UTClientSideWeaponPawn.DetachDriver")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function UTGame.UTClientSideWeaponPawn.Tick")); }
		}
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void AttachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttachDriver, params.ptr, cast(void*)0);
	}
	void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachDriver, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
