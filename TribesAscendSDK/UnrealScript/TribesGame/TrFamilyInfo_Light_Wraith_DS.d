module UnrealScript.TribesGame.TrFamilyInfo_Light_Wraith_DS;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Wraith;

extern(C++) interface TrFamilyInfo_Light_Wraith_DS : TrFamilyInfo_Light_Wraith
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Light_Wraith_DS")); }
	private static __gshared TrFamilyInfo_Light_Wraith_DS mDefaultProperties;
	@property final static TrFamilyInfo_Light_Wraith_DS DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Light_Wraith_DS", "TrFamilyInfo_Light_Wraith_DS TribesGame.Default__TrFamilyInfo_Light_Wraith_DS")); }
}
