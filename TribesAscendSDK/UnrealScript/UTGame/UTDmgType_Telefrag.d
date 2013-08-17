module UnrealScript.UTGame.UTDmgType_Telefrag;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDamageType;

extern(C++) interface UTDmgType_Telefrag : UTDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDmgType_Telefrag")); }
	private static __gshared UTDmgType_Telefrag mDefaultProperties;
	@property final static UTDmgType_Telefrag DefaultProperties() { mixin(MGDPC("UTDmgType_Telefrag", "UTDmgType_Telefrag UTGame.Default__UTDmgType_Telefrag")); }
}
