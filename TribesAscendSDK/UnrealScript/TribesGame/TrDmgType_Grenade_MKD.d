module UnrealScript.TribesGame.TrDmgType_Grenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_Grenade_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_Grenade_MKD")); }
	private static __gshared TrDmgType_Grenade_MKD mDefaultProperties;
	@property final static TrDmgType_Grenade_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_Grenade_MKD", "TrDmgType_Grenade_MKD TribesGame.Default__TrDmgType_Grenade_MKD")); }
}
