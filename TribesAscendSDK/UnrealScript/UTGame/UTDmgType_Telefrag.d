module UnrealScript.UTGame.UTDmgType_Telefrag;

import ScriptClasses;
import UnrealScript.UTGame.UTDamageType;

extern(C++) interface UTDmgType_Telefrag : UTDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDmgType_Telefrag")); }
	private static __gshared UTDmgType_Telefrag mDefaultProperties;
	@property final static UTDmgType_Telefrag DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDmgType_Telefrag)("UTDmgType_Telefrag UTGame.Default__UTDmgType_Telefrag")); }
}
