module UnrealScript.TribesGame.TrDmgType_Spinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Spinfusor : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_Spinfusor")()); }
	private static __gshared TrDmgType_Spinfusor mDefaultProperties;
	@property final static TrDmgType_Spinfusor DefaultProperties() { mixin(MGDPC!(TrDmgType_Spinfusor, "TrDmgType_Spinfusor TribesGame.Default__TrDmgType_Spinfusor")()); }
}
