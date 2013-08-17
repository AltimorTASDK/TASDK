module UnrealScript.TribesGame.TrLightTurret_DiamondSword;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable_LightTurret;

extern(C++) interface TrLightTurret_DiamondSword : TrDeployable_LightTurret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrLightTurret_DiamondSword")); }
	private static __gshared TrLightTurret_DiamondSword mDefaultProperties;
	@property final static TrLightTurret_DiamondSword DefaultProperties() { mixin(MGDPC("TrLightTurret_DiamondSword", "TrLightTurret_DiamondSword TribesGame.Default__TrLightTurret_DiamondSword")); }
}
