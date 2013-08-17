module UnrealScript.TribesGame.TrFamilyInfo_Light_Architect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_Light_Architect : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Light_Architect")); }
	private static __gshared TrFamilyInfo_Light_Architect mDefaultProperties;
	@property final static TrFamilyInfo_Light_Architect DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Light_Architect", "TrFamilyInfo_Light_Architect TribesGame.Default__TrFamilyInfo_Light_Architect")); }
}
