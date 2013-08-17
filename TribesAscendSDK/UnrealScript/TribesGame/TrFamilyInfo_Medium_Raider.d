module UnrealScript.TribesGame.TrFamilyInfo_Medium_Raider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_Medium_Raider : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo_Medium_Raider")()); }
	private static __gshared TrFamilyInfo_Medium_Raider mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Raider DefaultProperties() { mixin(MGDPC!(TrFamilyInfo_Medium_Raider, "TrFamilyInfo_Medium_Raider TribesGame.Default__TrFamilyInfo_Medium_Raider")()); }
}
