module UnrealScript.TribesGame.TrDeployableHologram_DropJammer;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_DropJammer : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableHologram_DropJammer")); }
	private static __gshared TrDeployableHologram_DropJammer mDefaultProperties;
	@property final static TrDeployableHologram_DropJammer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployableHologram_DropJammer)("TrDeployableHologram_DropJammer TribesGame.Default__TrDeployableHologram_DropJammer")); }
}
