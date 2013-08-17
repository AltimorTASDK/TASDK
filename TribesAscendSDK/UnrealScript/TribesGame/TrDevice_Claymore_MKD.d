module UnrealScript.TribesGame.TrDevice_Claymore_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Claymore;

extern(C++) interface TrDevice_Claymore_MKD : TrDevice_Claymore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_Claymore_MKD")); }
	private static __gshared TrDevice_Claymore_MKD mDefaultProperties;
	@property final static TrDevice_Claymore_MKD DefaultProperties() { mixin(MGDPC("TrDevice_Claymore_MKD", "TrDevice_Claymore_MKD TribesGame.Default__TrDevice_Claymore_MKD")); }
}
