module UnrealScript.TribesGame.TrDmgType_Suicide;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Suicide : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_Suicide")()); }
	private static __gshared TrDmgType_Suicide mDefaultProperties;
	@property final static TrDmgType_Suicide DefaultProperties() { mixin(MGDPC!(TrDmgType_Suicide, "TrDmgType_Suicide TribesGame.Default__TrDmgType_Suicide")()); }
}
