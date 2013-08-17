module UnrealScript.TribesGame.TrFamilyInfo_Light_Sentinel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_Light_Sentinel : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo_Light_Sentinel")()); }
	private static __gshared TrFamilyInfo_Light_Sentinel mDefaultProperties;
	@property final static TrFamilyInfo_Light_Sentinel DefaultProperties() { mixin(MGDPC!(TrFamilyInfo_Light_Sentinel, "TrFamilyInfo_Light_Sentinel TribesGame.Default__TrFamilyInfo_Light_Sentinel")()); }
}
