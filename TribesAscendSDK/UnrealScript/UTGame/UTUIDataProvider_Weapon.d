module UnrealScript.UTGame.UTUIDataProvider_Weapon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_Weapon : UTUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTUIDataProvider_Weapon")()); }
	private static __gshared UTUIDataProvider_Weapon mDefaultProperties;
	@property final static UTUIDataProvider_Weapon DefaultProperties() { mixin(MGDPC!(UTUIDataProvider_Weapon, "UTUIDataProvider_Weapon UTGame.Default__UTUIDataProvider_Weapon")()); }
	@property final auto ref
	{
		ScriptString Description() { mixin(MGPC!(ScriptString, 188)()); }
		ScriptString Flags() { mixin(MGPC!(ScriptString, 176)()); }
		ScriptString AmmoClassPath() { mixin(MGPC!(ScriptString, 164)()); }
		ScriptString ClassName() { mixin(MGPC!(ScriptString, 152)()); }
	}
}
