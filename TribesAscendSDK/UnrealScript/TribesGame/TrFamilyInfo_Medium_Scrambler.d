module UnrealScript.TribesGame.TrFamilyInfo_Medium_Scrambler;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_Medium_Scrambler : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Medium_Scrambler")); }
	private static __gshared TrFamilyInfo_Medium_Scrambler mDefaultProperties;
	@property final static TrFamilyInfo_Medium_Scrambler DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Medium_Scrambler", "TrFamilyInfo_Medium_Scrambler TribesGame.Default__TrFamilyInfo_Medium_Scrambler")); }
}
