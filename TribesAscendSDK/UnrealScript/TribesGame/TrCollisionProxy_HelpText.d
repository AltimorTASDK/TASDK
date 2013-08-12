module UnrealScript.TribesGame.TrCollisionProxy_HelpText;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.TribesGame.TrHelpTextManager;

extern(C++) interface TrCollisionProxy_HelpText : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCollisionProxy_HelpText")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldShowHelpText_Delegate;
			ScriptFunction mOnPawnAdded;
			ScriptFunction mRequestHelpText;
			ScriptFunction mTryTraceAgainTimer;
			ScriptFunction mOnPawnRemoved;
		}
		public @property static final
		{
			ScriptFunction ShouldShowHelpText_Delegate() { return mShouldShowHelpText_Delegate ? mShouldShowHelpText_Delegate : (mShouldShowHelpText_Delegate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy_HelpText.ShouldShowHelpText_Delegate")); }
			ScriptFunction OnPawnAdded() { return mOnPawnAdded ? mOnPawnAdded : (mOnPawnAdded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy_HelpText.OnPawnAdded")); }
			ScriptFunction RequestHelpText() { return mRequestHelpText ? mRequestHelpText : (mRequestHelpText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy_HelpText.RequestHelpText")); }
			ScriptFunction TryTraceAgainTimer() { return mTryTraceAgainTimer ? mTryTraceAgainTimer : (mTryTraceAgainTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy_HelpText.TryTraceAgainTimer")); }
			ScriptFunction OnPawnRemoved() { return mOnPawnRemoved ? mOnPawnRemoved : (mOnPawnRemoved = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCollisionProxy_HelpText.OnPawnRemoved")); }
		}
	}
	@property final auto ref
	{
		TrHelpTextManager.EHelpTextType m_HelpTextType() { return *cast(TrHelpTextManager.EHelpTextType*)(cast(size_t)cast(void*)this + 496); }
		Pawn m_LocalPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 504); }
		float m_fHelpTextRemovalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	}
final:
	bool ShouldShowHelpText_Delegate(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldShowHelpText_Delegate, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnPawnAdded(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnAdded, params.ptr, cast(void*)0);
	}
	void RequestHelpText()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestHelpText, cast(void*)0, cast(void*)0);
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
