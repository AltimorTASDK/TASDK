module UnrealScript.TribesGame.TrDevice_PrismMineDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Claymore;

extern(C++) interface TrDevice_PrismMineDeployable : TrDevice_Claymore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_PrismMineDeployable")()); }
	private static __gshared TrDevice_PrismMineDeployable mDefaultProperties;
	@property final static TrDevice_PrismMineDeployable DefaultProperties() { mixin(MGDPC!(TrDevice_PrismMineDeployable, "TrDevice_PrismMineDeployable TribesGame.Default__TrDevice_PrismMineDeployable")()); }
}
