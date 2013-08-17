module UnrealScript.TribesGame.TrCollisionProxy_HelpText;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.TribesGame.TrHelpTextManager;

extern(C++) interface TrCollisionProxy_HelpText : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCollisionProxy_HelpText")()); }
	private static __gshared TrCollisionProxy_HelpText mDefaultProperties;
	@property final static TrCollisionProxy_HelpText DefaultProperties() { mixin(MGDPC!(TrCollisionProxy_HelpText, "TrCollisionProxy_HelpText TribesGame.Default__TrCollisionProxy_HelpText")()); }
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
			ScriptFunction ShouldShowHelpText_Delegate() { mixin(MGF!("mShouldShowHelpText_Delegate", "Function TribesGame.TrCollisionProxy_HelpText.ShouldShowHelpText_Delegate")()); }
			ScriptFunction OnPawnAdded() { mixin(MGF!("mOnPawnAdded", "Function TribesGame.TrCollisionProxy_HelpText.OnPawnAdded")()); }
			ScriptFunction RequestHelpText() { mixin(MGF!("mRequestHelpText", "Function TribesGame.TrCollisionProxy_HelpText.RequestHelpText")()); }
			ScriptFunction TryTraceAgainTimer() { mixin(MGF!("mTryTraceAgainTimer", "Function TribesGame.TrCollisionProxy_HelpText.TryTraceAgainTimer")()); }
			ScriptFunction OnPawnRemoved() { mixin(MGF!("mOnPawnRemoved", "Function TribesGame.TrCollisionProxy_HelpText.OnPawnRemoved")()); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__ShouldShowHelpText_Delegate__Delegate'!
		TrHelpTextManager.EHelpTextType m_HelpTextType() { mixin(MGPC!(TrHelpTextManager.EHelpTextType, 496)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_CylinderComponent'!
		Pawn m_LocalPawn() { mixin(MGPC!(Pawn, 504)()); }
		float m_fHelpTextRemovalTime() { mixin(MGPC!(float, 500)()); }
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
