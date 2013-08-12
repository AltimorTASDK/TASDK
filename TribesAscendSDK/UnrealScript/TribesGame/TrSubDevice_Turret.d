module UnrealScript.TribesGame.TrSubDevice_Turret;

import ScriptClasses;
import UnrealScript.TribesGame.TrSubDevice;

extern(C++) interface TrSubDevice_Turret : TrSubDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSubDevice_Turret")); }
	private static __gshared TrSubDevice_Turret mDefaultProperties;
	@property final static TrSubDevice_Turret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSubDevice_Turret)("TrSubDevice_Turret TribesGame.Default__TrSubDevice_Turret")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetPhysicalFireStartLoc;
			ScriptFunction mGetFireInterval;
		}
		public @property static final
		{
			ScriptFunction GetPhysicalFireStartLoc() { return mGetPhysicalFireStartLoc ? mGetPhysicalFireStartLoc : (mGetPhysicalFireStartLoc = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSubDevice_Turret.GetPhysicalFireStartLoc")); }
			ScriptFunction GetFireInterval() { return mGetFireInterval ? mGetFireInterval : (mGetFireInterval = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSubDevice_Turret.GetFireInterval")); }
		}
	}
final:
	Vector GetPhysicalFireStartLoc(Vector AimDir)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = AimDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicalFireStartLoc, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	float GetFireInterval(ubyte FireModeNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFireInterval, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
}
