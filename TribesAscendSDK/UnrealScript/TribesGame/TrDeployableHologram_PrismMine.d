module UnrealScript.TribesGame.TrDeployableHologram_PrismMine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_PrismMine : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeployableHologram_PrismMine")); }
	private static __gshared TrDeployableHologram_PrismMine mDefaultProperties;
	@property final static TrDeployableHologram_PrismMine DefaultProperties() { mixin(MGDPC("TrDeployableHologram_PrismMine", "TrDeployableHologram_PrismMine TribesGame.Default__TrDeployableHologram_PrismMine")); }
}
