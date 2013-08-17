module UnrealScript.TribesGame.TrFamilyInfo_Light_NakedPathfinder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_Light_NakedPathfinder : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Light_NakedPathfinder")); }
	private static __gshared TrFamilyInfo_Light_NakedPathfinder mDefaultProperties;
	@property final static TrFamilyInfo_Light_NakedPathfinder DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Light_NakedPathfinder", "TrFamilyInfo_Light_NakedPathfinder TribesGame.Default__TrFamilyInfo_Light_NakedPathfinder")); }
}
