module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Juggernaught;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy;

extern(C++) interface TrFamilyInfo_Heavy_Juggernaught : TrFamilyInfo_Heavy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Heavy_Juggernaught")); }
	private static __gshared TrFamilyInfo_Heavy_Juggernaught mDefaultProperties;
	@property final static TrFamilyInfo_Heavy_Juggernaught DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Heavy_Juggernaught", "TrFamilyInfo_Heavy_Juggernaught TribesGame.Default__TrFamilyInfo_Heavy_Juggernaught")); }
}
