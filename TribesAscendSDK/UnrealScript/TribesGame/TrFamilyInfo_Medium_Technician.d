module UnrealScript.TribesGame.TrFamilyInfo_Medium_Technician;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_Medium_Technician : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Medium_Technician")); }
	private static __gshared TrFamilyInfo_Medium_Technician mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Technician DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Medium_Technician", "TrFamilyInfo_Medium_Technician TribesGame.Default__TrFamilyInfo_Medium_Technician")); }
}
