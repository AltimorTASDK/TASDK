module UnrealScript.UTGame.UTDmgType_Lava;

import ScriptClasses;
import UnrealScript.UTGame.UTDmgType_Burning;

extern(C++) interface UTDmgType_Lava : UTDmgType_Burning
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDmgType_Lava")); }
	private static __gshared UTDmgType_Lava mDefaultProperties;
	@property final static UTDmgType_Lava DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDmgType_Lava)("UTDmgType_Lava UTGame.Default__UTDmgType_Lava")); }
}
