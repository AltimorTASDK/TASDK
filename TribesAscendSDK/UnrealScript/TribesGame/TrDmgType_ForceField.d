module UnrealScript.TribesGame.TrDmgType_ForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_ForceField : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_ForceField")()); }
	private static __gshared TrDmgType_ForceField mDefaultProperties;
	@property final static TrDmgType_ForceField DefaultProperties() { mixin(MGDPC!(TrDmgType_ForceField, "TrDmgType_ForceField TribesGame.Default__TrDmgType_ForceField")()); }
}
