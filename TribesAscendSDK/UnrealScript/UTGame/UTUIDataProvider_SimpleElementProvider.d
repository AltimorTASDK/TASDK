module UnrealScript.UTGame.UTUIDataProvider_SimpleElementProvider;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_SimpleElementProvider;

extern(C++) interface UTUIDataProvider_SimpleElementProvider : UDKUIDataProvider_SimpleElementProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataProvider_SimpleElementProvider")); }
	private static __gshared UTUIDataProvider_SimpleElementProvider mDefaultProperties;
	@property final static UTUIDataProvider_SimpleElementProvider DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTUIDataProvider_SimpleElementProvider)("UTUIDataProvider_SimpleElementProvider UTGame.Default__UTUIDataProvider_SimpleElementProvider")); }
}
