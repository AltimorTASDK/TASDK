module UnrealScript.TribesGame.TrDeployable_AntiAirTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable_Turret;

extern(C++) interface TrDeployable_AntiAirTurret : TrDeployable_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeployable_AntiAirTurret")); }
	private static __gshared TrDeployable_AntiAirTurret mDefaultProperties;
	@property final static TrDeployable_AntiAirTurret DefaultProperties() { mixin(MGDPC("TrDeployable_AntiAirTurret", "TrDeployable_AntiAirTurret TribesGame.Default__TrDeployable_AntiAirTurret")); }
}
