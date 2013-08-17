module UnrealScript.UnrealEd.ListCustomMaterialExpressionsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListCustomMaterialExpressionsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ListCustomMaterialExpressionsCommandlet")()); }
	private static __gshared ListCustomMaterialExpressionsCommandlet mDefaultProperties;
	@property final static ListCustomMaterialExpressionsCommandlet DefaultProperties() { mixin(MGDPC!(ListCustomMaterialExpressionsCommandlet, "ListCustomMaterialExpressionsCommandlet UnrealEd.Default__ListCustomMaterialExpressionsCommandlet")()); }
}
