module UnrealScript.TribesGame.TrPawnCollisionProxy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrCollisionProxy;

extern(C++) interface TrPawnCollisionProxy : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPawnCollisionProxy")); }
	private static __gshared TrPawnCollisionProxy mDefaultProperties;
	@property final static TrPawnCollisionProxy DefaultProperties() { mixin(MGDPC("TrPawnCollisionProxy", "TrPawnCollisionProxy TribesGame.Default__TrPawnCollisionProxy")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnPawnAdded;
			ScriptFunction mOnPawnRemoved;
		}
		public @property static final
		{
			ScriptFunction OnPawnAdded() { mixin(MGF("mOnPawnAdded", "Function TribesGame.TrPawnCollisionProxy.OnPawnAdded")); }
			ScriptFunction OnPawnRemoved() { mixin(MGF("mOnPawnRemoved", "Function TribesGame.TrPawnCollisionProxy.OnPawnRemoved")); }
		}
	}
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
