module UnrealScript.TribesGame.TrDevice_Claymore;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;
import UnrealScript.Engine.Projectile;

extern(C++) interface TrDevice_Claymore : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Claymore")()); }
	private static __gshared TrDevice_Claymore mDefaultProperties;
	@property final static TrDevice_Claymore DefaultProperties() { mixin(MGDPC!(TrDevice_Claymore, "TrDevice_Claymore TribesGame.Default__TrDevice_Claymore")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetPhysicalFireStartLoc;
			ScriptFunction mProjectileFire;
		}
		public @property static final
		{
			ScriptFunction GetPhysicalFireStartLoc() { mixin(MGF!("mGetPhysicalFireStartLoc", "Function TribesGame.TrDevice_Claymore.GetPhysicalFireStartLoc")()); }
			ScriptFunction ProjectileFire() { mixin(MGF!("mProjectileFire", "Function TribesGame.TrDevice_Claymore.ProjectileFire")()); }
		}
	}
	@property final auto ref float m_fWorldZPlacementOffset() { mixin(MGPC!("float", 2164)()); }
final:
	Vector GetPhysicalFireStartLoc(Vector* AimDir = null)
	{
		ubyte params[24];
		params[] = 0;
		if (AimDir !is null)
			*cast(Vector*)params.ptr = *AimDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicalFireStartLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileFire, params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
	}
}
