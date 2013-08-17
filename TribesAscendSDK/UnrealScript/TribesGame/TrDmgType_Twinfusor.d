module UnrealScript.TribesGame.TrDmgType_Twinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_Twinfusor : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_Twinfusor")()); }
	private static __gshared TrDmgType_Twinfusor mDefaultProperties;
	@property final static TrDmgType_Twinfusor DefaultProperties() { mixin(MGDPC!(TrDmgType_Twinfusor, "TrDmgType_Twinfusor TribesGame.Default__TrDmgType_Twinfusor")()); }
}
