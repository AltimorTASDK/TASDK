module UnrealScript.TribesGame.TrDmgType_Claymore_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Mine;

extern(C++) interface TrDmgType_Claymore_MKD : TrDmgType_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_Claymore_MKD")); }
	private static __gshared TrDmgType_Claymore_MKD mDefaultProperties;
	@property final static TrDmgType_Claymore_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_Claymore_MKD", "TrDmgType_Claymore_MKD TribesGame.Default__TrDmgType_Claymore_MKD")); }
}
