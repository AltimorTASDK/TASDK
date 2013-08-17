module UnrealScript.TribesGame.TrFamilyInfo_Light_NakedPathfinder_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Light_NakedPathfinder;

extern(C++) interface TrFamilyInfo_Light_NakedPathfinder_BE : TrFamilyInfo_Light_NakedPathfinder
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Light_NakedPathfinder_BE")); }
	private static __gshared TrFamilyInfo_Light_NakedPathfinder_BE mDefaultProperties;
	@property final static TrFamilyInfo_Light_NakedPathfinder_BE DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Light_NakedPathfinder_BE", "TrFamilyInfo_Light_NakedPathfinder_BE TribesGame.Default__TrFamilyInfo_Light_NakedPathfinder_BE")); }
}
