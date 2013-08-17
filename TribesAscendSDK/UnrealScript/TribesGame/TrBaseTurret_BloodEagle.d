module UnrealScript.TribesGame.TrBaseTurret_BloodEagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable_BaseTurret;

extern(C++) interface TrBaseTurret_BloodEagle : TrDeployable_BaseTurret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrBaseTurret_BloodEagle")); }
	private static __gshared TrBaseTurret_BloodEagle mDefaultProperties;
	@property final static TrBaseTurret_BloodEagle DefaultProperties() { mixin(MGDPC("TrBaseTurret_BloodEagle", "TrBaseTurret_BloodEagle TribesGame.Default__TrBaseTurret_BloodEagle")); }
}
