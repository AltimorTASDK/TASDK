module UnrealScript.TribesGame.TrFamilyInfo_Medium_Technician_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Medium_Technician;

extern(C++) interface TrFamilyInfo_Medium_Technician_BE : TrFamilyInfo_Medium_Technician
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo_Medium_Technician_BE")()); }
	private static __gshared TrFamilyInfo_Medium_Technician_BE mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Technician_BE DefaultProperties() { mixin(MGDPC!(TrFamilyInfo_Medium_Technician_BE, "TrFamilyInfo_Medium_Technician_BE TribesGame.Default__TrFamilyInfo_Medium_Technician_BE")()); }
}
