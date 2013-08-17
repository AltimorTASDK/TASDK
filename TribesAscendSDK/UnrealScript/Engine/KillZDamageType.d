module UnrealScript.Engine.KillZDamageType;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DamageType;

extern(C++) interface KillZDamageType : DamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.KillZDamageType")); }
	private static __gshared KillZDamageType mDefaultProperties;
	@property final static KillZDamageType DefaultProperties() { mixin(MGDPC("KillZDamageType", "KillZDamageType Engine.Default__KillZDamageType")); }
}
