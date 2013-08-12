module UnrealScript.UTGame.UTUIDataProvider_ServerDetails;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_ServerDetails;

extern(C++) interface UTUIDataProvider_ServerDetails : UDKUIDataProvider_ServerDetails
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataProvider_ServerDetails")); }
	private static __gshared UTUIDataProvider_ServerDetails mDefaultProperties;
	@property final static UTUIDataProvider_ServerDetails DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTUIDataProvider_ServerDetails)("UTUIDataProvider_ServerDetails UTGame.Default__UTUIDataProvider_ServerDetails")); }
}
