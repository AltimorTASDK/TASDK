module UnrealScript.TribesGame.TrDmgType_PersonalForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_PersonalForceField : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_PersonalForceField")()); }
	private static __gshared TrDmgType_PersonalForceField mDefaultProperties;
	@property final static TrDmgType_PersonalForceField DefaultProperties() { mixin(MGDPC!(TrDmgType_PersonalForceField, "TrDmgType_PersonalForceField TribesGame.Default__TrDmgType_PersonalForceField")()); }
}
