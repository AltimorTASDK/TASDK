module UnrealScript.UTGame.UTDmgType_Drowned;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDamageType;

extern(C++) interface UTDmgType_Drowned : UTDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDmgType_Drowned")); }
	private static __gshared UTDmgType_Drowned mDefaultProperties;
	@property final static UTDmgType_Drowned DefaultProperties() { mixin(MGDPC("UTDmgType_Drowned", "UTDmgType_Drowned UTGame.Default__UTDmgType_Drowned")); }
}
