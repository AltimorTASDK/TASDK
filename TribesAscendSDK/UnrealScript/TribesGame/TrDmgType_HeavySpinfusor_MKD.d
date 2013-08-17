module UnrealScript.TribesGame.TrDmgType_HeavySpinfusor_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_HeavySpinfusor_MKD : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_HeavySpinfusor_MKD")); }
	private static __gshared TrDmgType_HeavySpinfusor_MKD mDefaultProperties;
	@property final static TrDmgType_HeavySpinfusor_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_HeavySpinfusor_MKD", "TrDmgType_HeavySpinfusor_MKD TribesGame.Default__TrDmgType_HeavySpinfusor_MKD")); }
}
