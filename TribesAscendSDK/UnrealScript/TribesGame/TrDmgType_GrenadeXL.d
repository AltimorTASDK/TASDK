module UnrealScript.TribesGame.TrDmgType_GrenadeXL;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_GrenadeXL : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_GrenadeXL")); }
	private static __gshared TrDmgType_GrenadeXL mDefaultProperties;
	@property final static TrDmgType_GrenadeXL DefaultProperties() { mixin(MGDPC("TrDmgType_GrenadeXL", "TrDmgType_GrenadeXL TribesGame.Default__TrDmgType_GrenadeXL")); }
}
