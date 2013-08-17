module UnrealScript.Engine.DmgType_Crushed;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DamageType;

extern(C++) interface DmgType_Crushed : DamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DmgType_Crushed")); }
	private static __gshared DmgType_Crushed mDefaultProperties;
	@property final static DmgType_Crushed DefaultProperties() { mixin(MGDPC("DmgType_Crushed", "DmgType_Crushed Engine.Default__DmgType_Crushed")); }
}
