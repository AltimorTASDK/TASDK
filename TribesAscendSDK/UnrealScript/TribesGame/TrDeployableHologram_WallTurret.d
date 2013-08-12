module UnrealScript.TribesGame.TrDeployableHologram_WallTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_WallTurret : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableHologram_WallTurret")); }
	private static __gshared TrDeployableHologram_WallTurret mDefaultProperties;
	@property final static TrDeployableHologram_WallTurret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployableHologram_WallTurret)("TrDeployableHologram_WallTurret TribesGame.Default__TrDeployableHologram_WallTurret")); }
}
