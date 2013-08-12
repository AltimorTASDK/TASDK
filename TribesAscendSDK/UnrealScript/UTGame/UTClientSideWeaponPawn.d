module UnrealScript.UTGame.UTClientSideWeaponPawn;

import ScriptClasses;
import UnrealScript.UTGame.UTWeaponPawn;
import UnrealScript.Engine.Pawn;

extern(C++) interface UTClientSideWeaponPawn : UTWeaponPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTClientSideWeaponPawn")); }
	private static __gshared UTClientSideWeaponPawn mDefaultProperties;
	@property final static UTClientSideWeaponPawn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTClientSideWeaponPawn)("UTClientSideWeaponPawn UTGame.Default__UTClientSideWeaponPawn")); }
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
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTClientSideWeaponPawn.PreBeginPlay")); }
			ScriptFunction AttachDriver() { return mAttachDriver ? mAttachDriver : (mAttachDriver = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTClientSideWeaponPawn.AttachDriver")); }
			ScriptFunction DetachDriver() { return mDetachDriver ? mDetachDriver : (mDetachDriver = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTClientSideWeaponPawn.DetachDriver")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTClientSideWeaponPawn.Tick")); }
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
