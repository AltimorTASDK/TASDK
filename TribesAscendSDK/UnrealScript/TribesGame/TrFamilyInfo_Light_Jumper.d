module UnrealScript.TribesGame.TrFamilyInfo_Light_Jumper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_Light_Jumper : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Light_Jumper")); }
	private static __gshared TrFamilyInfo_Light_Jumper mDefaultProperties;
	@property final static TrFamilyInfo_Light_Jumper DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Light_Jumper", "TrFamilyInfo_Light_Jumper TribesGame.Default__TrFamilyInfo_Light_Jumper")); }
}
