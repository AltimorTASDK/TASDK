module UnrealScript.UTGame.UTDmgType_SpaceDeath;

import ScriptClasses;
import UnrealScript.UTGame.UTDamageType;

extern(C++) interface UTDmgType_SpaceDeath : UTDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDmgType_SpaceDeath")); }
	private static __gshared UTDmgType_SpaceDeath mDefaultProperties;
	@property final static UTDmgType_SpaceDeath DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDmgType_SpaceDeath)("UTDmgType_SpaceDeath UTGame.Default__UTDmgType_SpaceDeath")); }
}
