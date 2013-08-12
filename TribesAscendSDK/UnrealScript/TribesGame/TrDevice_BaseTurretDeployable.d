module UnrealScript.TribesGame.TrDevice_BaseTurretDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_BaseTurretDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_BaseTurretDeployable")); }
	private static __gshared TrDevice_BaseTurretDeployable mDefaultProperties;
	@property final static TrDevice_BaseTurretDeployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_BaseTurretDeployable)("TrDevice_BaseTurretDeployable TribesGame.Default__TrDevice_BaseTurretDeployable")); }
}
