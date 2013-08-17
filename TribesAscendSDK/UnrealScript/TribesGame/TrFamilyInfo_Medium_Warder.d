module UnrealScript.TribesGame.TrFamilyInfo_Medium_Warder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_Medium_Warder : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo_Medium_Warder")()); }
	private static __gshared TrFamilyInfo_Medium_Warder mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Warder DefaultProperties() { mixin(MGDPC!(TrFamilyInfo_Medium_Warder, "TrFamilyInfo_Medium_Warder TribesGame.Default__TrFamilyInfo_Medium_Warder")()); }
}
