module UnrealScript.UnrealEd.GenericBrowserType_ApexDestructibleDamageParameters;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_ApexDestructibleDamageParameters : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_ApexDestructibleDamageParameters")()); }
	private static __gshared GenericBrowserType_ApexDestructibleDamageParameters mDefaultProperties;
	@property final static GenericBrowserType_ApexDestructibleDamageParameters DefaultProperties() { mixin(MGDPC!(GenericBrowserType_ApexDestructibleDamageParameters, "GenericBrowserType_ApexDestructibleDamageParameters UnrealEd.Default__GenericBrowserType_ApexDestructibleDamageParameters")()); }
}
