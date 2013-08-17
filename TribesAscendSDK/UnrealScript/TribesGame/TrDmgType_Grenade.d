module UnrealScript.TribesGame.TrDmgType_Grenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_Grenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_Grenade")); }
	private static __gshared TrDmgType_Grenade mDefaultProperties;
	@property final static TrDmgType_Grenade DefaultProperties() { mixin(MGDPC("TrDmgType_Grenade", "TrDmgType_Grenade TribesGame.Default__TrDmgType_Grenade")); }
}
