module UnrealScript.TribesGame.TrFamilyInfo_Light;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo;

extern(C++) interface TrFamilyInfo_Light : TrFamilyInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Light")); }
	private static __gshared TrFamilyInfo_Light mDefaultProperties;
	@property final static TrFamilyInfo_Light DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Light", "TrFamilyInfo_Light TribesGame.Default__TrFamilyInfo_Light")); }
}
