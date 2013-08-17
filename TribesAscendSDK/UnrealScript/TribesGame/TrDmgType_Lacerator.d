module UnrealScript.TribesGame.TrDmgType_Lacerator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Lacerator : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_Lacerator")()); }
	private static __gshared TrDmgType_Lacerator mDefaultProperties;
	@property final static TrDmgType_Lacerator DefaultProperties() { mixin(MGDPC!(TrDmgType_Lacerator, "TrDmgType_Lacerator TribesGame.Default__TrDmgType_Lacerator")()); }
}
