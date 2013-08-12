module UnrealScript.UTGame.UTDmgType_Encroached;

import ScriptClasses;
import UnrealScript.UTGame.UTDamageType;

extern(C++) interface UTDmgType_Encroached : UTDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDmgType_Encroached")); }
	private static __gshared UTDmgType_Encroached mDefaultProperties;
	@property final static UTDmgType_Encroached DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDmgType_Encroached)("UTDmgType_Encroached UTGame.Default__UTDmgType_Encroached")); }
}
