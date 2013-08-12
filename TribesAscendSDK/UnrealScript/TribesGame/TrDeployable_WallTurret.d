module UnrealScript.TribesGame.TrDeployable_WallTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_Turret;

extern(C++) interface TrDeployable_WallTurret : TrDeployable_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_WallTurret")); }
	private static __gshared TrDeployable_WallTurret mDefaultProperties;
	@property final static TrDeployable_WallTurret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployable_WallTurret)("TrDeployable_WallTurret TribesGame.Default__TrDeployable_WallTurret")); }
}
