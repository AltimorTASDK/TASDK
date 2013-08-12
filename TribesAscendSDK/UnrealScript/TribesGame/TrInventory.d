module UnrealScript.TribesGame.TrInventory;

import ScriptClasses;
import UnrealScript.UTGame.UTInventory;

extern(C++) interface TrInventory : UTInventory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrInventory")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDropFrom;
		public @property static final ScriptFunction DropFrom() { return mDropFrom ? mDropFrom : (mDropFrom = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventory.DropFrom")); }
	}
	@property final auto ref float m_fMaxPickupSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	final void DropFrom(Vector StartLocation, Vector StartVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Vector*)&params[12] = StartVelocity;
		(cast(ScriptObject)this).ProcessEvent(Functions.DropFrom, params.ptr, cast(void*)0);
	}
}
