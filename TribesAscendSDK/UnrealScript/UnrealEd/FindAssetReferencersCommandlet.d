module UnrealScript.UnrealEd.FindAssetReferencersCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindAssetReferencersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FindAssetReferencersCommandlet")()); }
	private static __gshared FindAssetReferencersCommandlet mDefaultProperties;
	@property final static FindAssetReferencersCommandlet DefaultProperties() { mixin(MGDPC!(FindAssetReferencersCommandlet, "FindAssetReferencersCommandlet UnrealEd.Default__FindAssetReferencersCommandlet")()); }
}
