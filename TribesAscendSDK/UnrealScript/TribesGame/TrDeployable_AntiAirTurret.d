module UnrealScript.TribesGame.TrDeployable_AntiAirTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_Turret;

extern(C++) interface TrDeployable_AntiAirTurret : TrDeployable_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_AntiAirTurret")); }
	private static __gshared TrDeployable_AntiAirTurret mDefaultProperties;
	@property final static TrDeployable_AntiAirTurret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployable_AntiAirTurret)("TrDeployable_AntiAirTurret TribesGame.Default__TrDeployable_AntiAirTurret")); }
}
