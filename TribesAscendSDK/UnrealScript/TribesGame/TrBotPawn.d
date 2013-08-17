module UnrealScript.TribesGame.TrBotPawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerPawn;

extern(C++) interface TrBotPawn : TrPlayerPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrBotPawn")); }
	private static __gshared TrBotPawn mDefaultProperties;
	@property final static TrBotPawn DefaultProperties() { mixin(MGDPC("TrBotPawn", "TrBotPawn TribesGame.Default__TrBotPawn")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetMovementPhysics;
			ScriptFunction mTick;
			ScriptFunction mRechargeHealthPool;
		}
		public @property static final
		{
			ScriptFunction SetMovementPhysics() { mixin(MGF("mSetMovementPhysics", "Function TribesGame.TrBotPawn.SetMovementPhysics")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrBotPawn.Tick")); }
			ScriptFunction RechargeHealthPool() { mixin(MGF("mRechargeHealthPool", "Function TribesGame.TrBotPawn.RechargeHealthPool")); }
		}
	}
	static struct Dying
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrBotPawn.Dying")); }
	}
final:
	void SetMovementPhysics()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMovementPhysics, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void RechargeHealthPool(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.RechargeHealthPool, params.ptr, cast(void*)0);
	}
}
