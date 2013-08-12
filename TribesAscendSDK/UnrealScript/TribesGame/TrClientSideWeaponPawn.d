module UnrealScript.TribesGame.TrClientSideWeaponPawn;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTClientSideWeaponPawn;

extern(C++) interface TrClientSideWeaponPawn : UTClientSideWeaponPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrClientSideWeaponPawn")); }
	private static __gshared TrClientSideWeaponPawn mDefaultProperties;
	@property final static TrClientSideWeaponPawn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrClientSideWeaponPawn)("TrClientSideWeaponPawn TribesGame.Default__TrClientSideWeaponPawn")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDetachDriver;
		public @property static final ScriptFunction DetachDriver() { return mDetachDriver ? mDetachDriver : (mDetachDriver = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrClientSideWeaponPawn.DetachDriver")); }
	}
	final void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachDriver, params.ptr, cast(void*)0);
	}
}
