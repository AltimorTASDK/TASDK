module UnrealScript.UTGame.UTDmgType_Lava;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDmgType_Burning;

extern(C++) interface UTDmgType_Lava : UTDmgType_Burning
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTDmgType_Lava")()); }
	private static __gshared UTDmgType_Lava mDefaultProperties;
	@property final static UTDmgType_Lava DefaultProperties() { mixin(MGDPC!(UTDmgType_Lava, "UTDmgType_Lava UTGame.Default__UTDmgType_Lava")()); }
}
