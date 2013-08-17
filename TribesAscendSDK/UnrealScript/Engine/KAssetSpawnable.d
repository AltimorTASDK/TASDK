module UnrealScript.Engine.KAssetSpawnable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.KAsset;

extern(C++) interface KAssetSpawnable : KAsset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.KAssetSpawnable")()); }
	private static __gshared KAssetSpawnable mDefaultProperties;
	@property final static KAssetSpawnable DefaultProperties() { mixin(MGDPC!(KAssetSpawnable, "KAssetSpawnable Engine.Default__KAssetSpawnable")()); }
}
