module UnrealScript.Engine.DmgType_Suicided;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.KillZDamageType;

extern(C++) interface DmgType_Suicided : KillZDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DmgType_Suicided")); }
	private static __gshared DmgType_Suicided mDefaultProperties;
	@property final static DmgType_Suicided DefaultProperties() { mixin(MGDPC("DmgType_Suicided", "DmgType_Suicided Engine.Default__DmgType_Suicided")); }
}
