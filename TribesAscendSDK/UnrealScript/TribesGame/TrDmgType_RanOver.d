module UnrealScript.TribesGame.TrDmgType_RanOver;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_RanOver : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_RanOver")()); }
	private static __gshared TrDmgType_RanOver mDefaultProperties;
	@property final static TrDmgType_RanOver DefaultProperties() { mixin(MGDPC!(TrDmgType_RanOver, "TrDmgType_RanOver TribesGame.Default__TrDmgType_RanOver")()); }
}
