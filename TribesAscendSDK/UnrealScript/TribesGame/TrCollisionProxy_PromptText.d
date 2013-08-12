module UnrealScript.TribesGame.TrCollisionProxy_PromptText;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrCollisionProxy;

extern(C++) interface TrCollisionProxy_PromptText : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCollisionProxy_PromptText")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnPawnAdded;
			ScriptFunction mRequestPromptText;
			ScriptFunction mCheckForUpgradeLevel;
			ScriptFunction mTryTraceAgainTimer;
			ScriptFunction mOnPawnRemoved;
		}
		public @property static final
		{
			ScriptFunction OnPawnAdded() { return mOnPawnAdded ? mOnPawnAdded : (mOnPawnAdded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy_PromptText.OnPawnAdded")); }
			ScriptFunction RequestPromptText() { return mRequestPromptText ? mRequestPromptText : (mRequestPromptText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy_PromptText.RequestPromptText")); }
			ScriptFunction CheckForUpgradeLevel() { return mCheckForUpgradeLevel ? mCheckForUpgradeLevel : (mCheckForUpgradeLevel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy_PromptText.CheckForUpgradeLevel")); }
			ScriptFunction TryTraceAgainTimer() { return mTryTraceAgainTimer ? mTryTraceAgainTimer : (mTryTraceAgainTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy_PromptText.TryTraceAgainTimer")); }
			ScriptFunction OnPawnRemoved() { return mOnPawnRemoved ? mOnPawnRemoved : (mOnPawnRemoved = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy_PromptText.OnPawnRemoved")); }
		}
	}
	@property final auto ref
	{
		float m_fPromptTextRemovalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
		int m_nPromptMessageIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
		Pawn m_LocalPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 520); }
		ScriptString m_LastUpgradeMsg() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 508); }
		int m_nLastUpgradeLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 504); }
	}
final:
	void OnPawnAdded(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnAdded, params.ptr, cast(void*)0);
	}
	void RequestPromptText()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestPromptText, cast(void*)0, cast(void*)0);
	}
	void CheckForUpgradeLevel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckForUpgradeLevel, cast(void*)0, cast(void*)0);
	}
	void TryTraceAgainTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TryTraceAgainTimer, cast(void*)0, cast(void*)0);
	}
	void OnPawnRemoved(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnRemoved, params.ptr, cast(void*)0);
	}
}
