module UnrealScript.TribesGame.TrFamilyInfo_Light_Infiltrator_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Infiltrator;

extern(C++) interface TrFamilyInfo_Light_Infiltrator_BE : TrFamilyInfo_Light_Infiltrator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Light_Infiltrator_BE")); }
	private static __gshared TrFamilyInfo_Light_Infiltrator_BE mDefaultProperties;
	@property final static TrFamilyInfo_Light_Infiltrator_BE DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Light_Infiltrator_BE", "TrFamilyInfo_Light_Infiltrator_BE TribesGame.Default__TrFamilyInfo_Light_Infiltrator_BE")); }
}
