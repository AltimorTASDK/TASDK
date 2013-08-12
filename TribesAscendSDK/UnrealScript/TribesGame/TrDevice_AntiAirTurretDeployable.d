module UnrealScript.TribesGame.TrDevice_AntiAirTurretDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_AntiAirTurretDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_AntiAirTurretDeployable")); }
	private static __gshared TrDevice_AntiAirTurretDeployable mDefaultProperties;
	@property final static TrDevice_AntiAirTurretDeployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_AntiAirTurretDeployable)("TrDevice_AntiAirTurretDeployable TribesGame.Default__TrDevice_AntiAirTurretDeployable")); }
}
