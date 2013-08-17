module UnrealScript.TribesGame.TrDmgType_StealthSpinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_StealthSpinfusor : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_StealthSpinfusor")); }
	private static __gshared TrDmgType_StealthSpinfusor mDefaultProperties;
	@property final static TrDmgType_StealthSpinfusor DefaultProperties() { mixin(MGDPC("TrDmgType_StealthSpinfusor", "TrDmgType_StealthSpinfusor TribesGame.Default__TrDmgType_StealthSpinfusor")); }
}
