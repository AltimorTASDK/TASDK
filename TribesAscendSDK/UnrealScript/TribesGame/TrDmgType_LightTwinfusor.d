module UnrealScript.TribesGame.TrDmgType_LightTwinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_LightTwinfusor : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_LightTwinfusor")); }
	private static __gshared TrDmgType_LightTwinfusor mDefaultProperties;
	@property final static TrDmgType_LightTwinfusor DefaultProperties() { mixin(MGDPC("TrDmgType_LightTwinfusor", "TrDmgType_LightTwinfusor TribesGame.Default__TrDmgType_LightTwinfusor")); }
}
