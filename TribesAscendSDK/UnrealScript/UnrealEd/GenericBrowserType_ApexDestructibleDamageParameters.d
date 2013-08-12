module UnrealScript.UnrealEd.GenericBrowserType_ApexDestructibleDamageParameters;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_ApexDestructibleDamageParameters : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_ApexDestructibleDamageParameters")); }
	private static __gshared GenericBrowserType_ApexDestructibleDamageParameters mDefaultProperties;
	@property final static GenericBrowserType_ApexDestructibleDamageParameters DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_ApexDestructibleDamageParameters)("GenericBrowserType_ApexDestructibleDamageParameters UnrealEd.Default__GenericBrowserType_ApexDestructibleDamageParameters")); }
}
