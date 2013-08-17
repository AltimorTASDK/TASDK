module UnrealScript.TribesGame.TrInventory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTInventory;

extern(C++) interface TrInventory : UTInventory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrInventory")()); }
	private static __gshared TrInventory mDefaultProperties;
	@property final static TrInventory DefaultProperties() { mixin(MGDPC!(TrInventory, "TrInventory TribesGame.Default__TrInventory")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDropFrom;
		public @property static final ScriptFunction DropFrom() { mixin(MGF!("mDropFrom", "Function TribesGame.TrInventory.DropFrom")()); }
	}
	@property final auto ref float m_fMaxPickupSpeed() { mixin(MGPC!("float", 556)()); }
	final void DropFrom(Vector StartLocation, Vector StartVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Vector*)&params[12] = StartVelocity;
		(cast(ScriptObject)this).ProcessEvent(Functions.DropFrom, params.ptr, cast(void*)0);
	}
}
