module UnrealScript.TribesGame.TrMineCollisionProxy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrCollisionProxy;

extern(C++) interface TrMineCollisionProxy : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrMineCollisionProxy")()); }
	private static __gshared TrMineCollisionProxy mDefaultProperties;
	@property final static TrMineCollisionProxy DefaultProperties() { mixin(MGDPC!(TrMineCollisionProxy, "TrMineCollisionProxy TribesGame.Default__TrMineCollisionProxy")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnPawnAdded;
			ScriptFunction mOnPawnRemoved;
		}
		public @property static final
		{
			ScriptFunction OnPawnAdded() { mixin(MGF!("mOnPawnAdded", "Function TribesGame.TrMineCollisionProxy.OnPawnAdded")()); }
			ScriptFunction OnPawnRemoved() { mixin(MGF!("mOnPawnRemoved", "Function TribesGame.TrMineCollisionProxy.OnPawnRemoved")()); }
		}
	}
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_BoxComponent'!
final:
	void OnPawnAdded(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnAdded, params.ptr, cast(void*)0);
	}
	void OnPawnRemoved(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnRemoved, params.ptr, cast(void*)0);
	}
}
