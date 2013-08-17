module UnrealScript.TribesGame.TrFamilyInfo_Light_Wraith_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Wraith;

extern(C++) interface TrFamilyInfo_Light_Wraith_BE : TrFamilyInfo_Light_Wraith
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo_Light_Wraith_BE")()); }
	private static __gshared TrFamilyInfo_Light_Wraith_BE mDefaultProperties;
	@property final static TrFamilyInfo_Light_Wraith_BE DefaultProperties() { mixin(MGDPC!(TrFamilyInfo_Light_Wraith_BE, "TrFamilyInfo_Light_Wraith_BE TribesGame.Default__TrFamilyInfo_Light_Wraith_BE")()); }
}
