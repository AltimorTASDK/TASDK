module UnrealScript.TribesGame.TrClientSideWeaponPawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTClientSideWeaponPawn;

extern(C++) interface TrClientSideWeaponPawn : UTClientSideWeaponPawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrClientSideWeaponPawn")); }
	private static __gshared TrClientSideWeaponPawn mDefaultProperties;
	@property final static TrClientSideWeaponPawn DefaultProperties() { mixin(MGDPC("TrClientSideWeaponPawn", "TrClientSideWeaponPawn TribesGame.Default__TrClientSideWeaponPawn")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDetachDriver;
		public @property static final ScriptFunction DetachDriver() { mixin(MGF("mDetachDriver", "Function TribesGame.TrClientSideWeaponPawn.DetachDriver")); }
	}
	final void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachDriver, params.ptr, cast(void*)0);
	}
}
