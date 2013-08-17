module UnrealScript.UTGame.UTDmgType_Encroached;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDamageType;

extern(C++) interface UTDmgType_Encroached : UTDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDmgType_Encroached")); }
	private static __gshared UTDmgType_Encroached mDefaultProperties;
	@property final static UTDmgType_Encroached DefaultProperties() { mixin(MGDPC("UTDmgType_Encroached", "UTDmgType_Encroached UTGame.Default__UTDmgType_Encroached")); }
}
