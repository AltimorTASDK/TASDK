module UnrealScript.TribesGame.TrCollisionProxy_PromptText;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrCollisionProxy;

extern(C++) interface TrCollisionProxy_PromptText : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCollisionProxy_PromptText")()); }
	private static __gshared TrCollisionProxy_PromptText mDefaultProperties;
	@property final static TrCollisionProxy_PromptText DefaultProperties() { mixin(MGDPC!(TrCollisionProxy_PromptText, "TrCollisionProxy_PromptText TribesGame.Default__TrCollisionProxy_PromptText")()); }
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
			ScriptFunction OnPawnAdded() { mixin(MGF!("mOnPawnAdded", "Function TribesGame.TrCollisionProxy_PromptText.OnPawnAdded")()); }
			ScriptFunction RequestPromptText() { mixin(MGF!("mRequestPromptText", "Function TribesGame.TrCollisionProxy_PromptText.RequestPromptText")()); }
			ScriptFunction CheckForUpgradeLevel() { mixin(MGF!("mCheckForUpgradeLevel", "Function TribesGame.TrCollisionProxy_PromptText.CheckForUpgradeLevel")()); }
			ScriptFunction TryTraceAgainTimer() { mixin(MGF!("mTryTraceAgainTimer", "Function TribesGame.TrCollisionProxy_PromptText.TryTraceAgainTimer")()); }
			ScriptFunction OnPawnRemoved() { mixin(MGF!("mOnPawnRemoved", "Function TribesGame.TrCollisionProxy_PromptText.OnPawnRemoved")()); }
		}
	}
	@property final auto ref
	{
		float m_fPromptTextRemovalTime() { mixin(MGPC!(float, 496)()); }
		int m_nPromptMessageIndex() { mixin(MGPC!(int, 500)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_CylinderComponent'!
		Pawn m_LocalPawn() { mixin(MGPC!(Pawn, 520)()); }
		ScriptString m_LastUpgradeMsg() { mixin(MGPC!(ScriptString, 508)()); }
		int m_nLastUpgradeLevel() { mixin(MGPC!(int, 504)()); }
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
