module UnrealScript.TribesGame.TrFamilyInfo_Medium_Raider_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Medium_Raider;

extern(C++) interface TrFamilyInfo_Medium_Raider_BE : TrFamilyInfo_Medium_Raider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo_Medium_Raider_BE")()); }
	private static __gshared TrFamilyInfo_Medium_Raider_BE mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Raider_BE DefaultProperties() { mixin(MGDPC!(TrFamilyInfo_Medium_Raider_BE, "TrFamilyInfo_Medium_Raider_BE TribesGame.Default__TrFamilyInfo_Medium_Raider_BE")()); }
}
