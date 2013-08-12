module UnrealScript.TribesGame.TrPawnCollisionProxy;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrCollisionProxy;

extern(C++) interface TrPawnCollisionProxy : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPawnCollisionProxy")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnPawnAdded;
			ScriptFunction mOnPawnRemoved;
		}
		public @property static final
		{
			ScriptFunction OnPawnAdded() { return mOnPawnAdded ? mOnPawnAdded : (mOnPawnAdded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawnCollisionProxy.OnPawnAdded")); }
			ScriptFunction OnPawnRemoved() { return mOnPawnRemoved ? mOnPawnRemoved : (mOnPawnRemoved = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPawnCollisionProxy.OnPawnRemoved")); }
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
