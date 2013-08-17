module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Marauder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy;

extern(C++) interface TrFamilyInfo_Heavy_Marauder : TrFamilyInfo_Heavy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Heavy_Marauder")); }
	private static __gshared TrFamilyInfo_Heavy_Marauder mDefaultProperties;
	@property final static TrFamilyInfo_Heavy_Marauder DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Heavy_Marauder", "TrFamilyInfo_Heavy_Marauder TribesGame.Default__TrFamilyInfo_Heavy_Marauder")); }
}
