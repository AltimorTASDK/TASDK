module UnrealScript.TribesGame.TrDmgType_LightSpinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_LightSpinfusor : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_LightSpinfusor")); }
	private static __gshared TrDmgType_LightSpinfusor mDefaultProperties;
	@property final static TrDmgType_LightSpinfusor DefaultProperties() { mixin(MGDPC("TrDmgType_LightSpinfusor", "TrDmgType_LightSpinfusor TribesGame.Default__TrDmgType_LightSpinfusor")); }
}
