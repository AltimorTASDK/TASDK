module UnrealScript.TribesGame.TrDmgType_LightSpinfusor_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_LightSpinfusor_MKD : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_LightSpinfusor_MKD")()); }
	private static __gshared TrDmgType_LightSpinfusor_MKD mDefaultProperties;
	@property final static TrDmgType_LightSpinfusor_MKD DefaultProperties() { mixin(MGDPC!(TrDmgType_LightSpinfusor_MKD, "TrDmgType_LightSpinfusor_MKD TribesGame.Default__TrDmgType_LightSpinfusor_MKD")()); }
}
