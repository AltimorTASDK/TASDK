module UnrealScript.TribesGame.TrDeployableHologram_BaseTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_BaseTurret : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableHologram_BaseTurret")); }
	private static __gshared TrDeployableHologram_BaseTurret mDefaultProperties;
	@property final static TrDeployableHologram_BaseTurret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployableHologram_BaseTurret)("TrDeployableHologram_BaseTurret TribesGame.Default__TrDeployableHologram_BaseTurret")); }
}
