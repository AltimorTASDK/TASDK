module UnrealScript.TribesGame.TrBotPawn;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerPawn;

extern(C++) interface TrBotPawn : TrPlayerPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrBotPawn")); }
	private static __gshared TrBotPawn mDefaultProperties;
	@property final static TrBotPawn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrBotPawn)("TrBotPawn TribesGame.Default__TrBotPawn")); }
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
			ScriptFunction SetMovementPhysics() { return mSetMovementPhysics ? mSetMovementPhysics : (mSetMovementPhysics = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBotPawn.SetMovementPhysics")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBotPawn.Tick")); }
			ScriptFunction RechargeHealthPool() { return mRechargeHealthPool ? mRechargeHealthPool : (mRechargeHealthPool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBotPawn.RechargeHealthPool")); }
		}
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
