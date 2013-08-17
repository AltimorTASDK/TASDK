module UnrealScript.TribesGame.TrFamilyInfo_Medium_Scrambler_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Medium_Scrambler;

extern(C++) interface TrFamilyInfo_Medium_Scrambler_BE : TrFamilyInfo_Medium_Scrambler
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo_Medium_Scrambler_BE")()); }
	private static __gshared TrFamilyInfo_Medium_Scrambler_BE mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Scrambler_BE DefaultProperties() { mixin(MGDPC!(TrFamilyInfo_Medium_Scrambler_BE, "TrFamilyInfo_Medium_Scrambler_BE TribesGame.Default__TrFamilyInfo_Medium_Scrambler_BE")()); }
}
