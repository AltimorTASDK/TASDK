module UnrealScript.UTGame.UTGameSearchPersonal;

import ScriptClasses;
import UnrealScript.UTGame.UTGameSearchCommon;

extern(C++) interface UTGameSearchPersonal : UTGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGameSearchPersonal")); }
	private static __gshared UTGameSearchPersonal mDefaultProperties;
	@property final static UTGameSearchPersonal DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTGameSearchPersonal)("UTGameSearchPersonal UTGame.Default__UTGameSearchPersonal")); }
}
