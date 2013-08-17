module UnrealScript.TribesGame.TrDmgType_GrenadeT5;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_GrenadeT5 : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_GrenadeT5")); }
	private static __gshared TrDmgType_GrenadeT5 mDefaultProperties;
	@property final static TrDmgType_GrenadeT5 DefaultProperties() { mixin(MGDPC("TrDmgType_GrenadeT5", "TrDmgType_GrenadeT5 TribesGame.Default__TrDmgType_GrenadeT5")); }
}
