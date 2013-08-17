module UnrealScript.TribesGame.TrDmgType_Spinfusor_100X;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_Spinfusor_100X : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_Spinfusor_100X")); }
	private static __gshared TrDmgType_Spinfusor_100X mDefaultProperties;
	@property final static TrDmgType_Spinfusor_100X DefaultProperties() { mixin(MGDPC("TrDmgType_Spinfusor_100X", "TrDmgType_Spinfusor_100X TribesGame.Default__TrDmgType_Spinfusor_100X")); }
}
