module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Juggernaught_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy_Juggernaught;

extern(C++) interface TrFamilyInfo_Heavy_Juggernaught_BE : TrFamilyInfo_Heavy_Juggernaught
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Heavy_Juggernaught_BE")); }
	private static __gshared TrFamilyInfo_Heavy_Juggernaught_BE mDefaultProperties;
	@property final static TrFamilyInfo_Heavy_Juggernaught_BE DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Heavy_Juggernaught_BE", "TrFamilyInfo_Heavy_Juggernaught_BE TribesGame.Default__TrFamilyInfo_Heavy_Juggernaught_BE")); }
}
