module UnrealScript.TribesGame.TrDeployableHologram_DropJammer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_DropJammer : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeployableHologram_DropJammer")); }
	private static __gshared TrDeployableHologram_DropJammer mDefaultProperties;
	@property final static TrDeployableHologram_DropJammer DefaultProperties() { mixin(MGDPC("TrDeployableHologram_DropJammer", "TrDeployableHologram_DropJammer TribesGame.Default__TrDeployableHologram_DropJammer")); }
}
