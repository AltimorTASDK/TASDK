module UnrealScript.TribesGame.TrDmgType_HeavySpinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_HeavySpinfusor : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_HeavySpinfusor")); }
	private static __gshared TrDmgType_HeavySpinfusor mDefaultProperties;
	@property final static TrDmgType_HeavySpinfusor DefaultProperties() { mixin(MGDPC("TrDmgType_HeavySpinfusor", "TrDmgType_HeavySpinfusor TribesGame.Default__TrDmgType_HeavySpinfusor")); }
}
