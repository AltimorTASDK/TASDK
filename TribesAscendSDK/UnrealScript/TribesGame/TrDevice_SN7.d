module UnrealScript.TribesGame.TrDevice_SN7;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Projectile;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_SN7 : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_SN7")()); }
	private static __gshared TrDevice_SN7 mDefaultProperties;
	@property final static TrDevice_SN7 DefaultProperties() { mixin(MGDPC!(TrDevice_SN7, "TrDevice_SN7 TribesGame.Default__TrDevice_SN7")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mProjectileFire;
		public @property static final ScriptFunction ProjectileFire() { mixin(MGF!("mProjectileFire", "Function TribesGame.TrDevice_SN7.ProjectileFire")()); }
	}
	final Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileFire, params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
}
