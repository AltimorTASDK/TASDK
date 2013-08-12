module UnrealScript.TribesGame.TrDeployableHologram_AntiAirTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_AntiAirTurret : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableHologram_AntiAirTurret")); }
	private static __gshared TrDeployableHologram_AntiAirTurret mDefaultProperties;
	@property final static TrDeployableHologram_AntiAirTurret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployableHologram_AntiAirTurret)("TrDeployableHologram_AntiAirTurret TribesGame.Default__TrDeployableHologram_AntiAirTurret")); }
}
