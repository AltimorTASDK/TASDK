module UnrealScript.TribesGame.TrDmgType_LightSpinfusor_100X;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_LightSpinfusor_100X : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_LightSpinfusor_100X")); }
	private static __gshared TrDmgType_LightSpinfusor_100X mDefaultProperties;
	@property final static TrDmgType_LightSpinfusor_100X DefaultProperties() { mixin(MGDPC("TrDmgType_LightSpinfusor_100X", "TrDmgType_LightSpinfusor_100X TribesGame.Default__TrDmgType_LightSpinfusor_100X")); }
}
