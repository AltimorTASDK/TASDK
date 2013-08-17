module UnrealScript.TribesGame.TrSubDevice_PersonalForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSubDevice_ForceField;

extern(C++) interface TrSubDevice_PersonalForceField : TrSubDevice_ForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSubDevice_PersonalForceField")); }
	private static __gshared TrSubDevice_PersonalForceField mDefaultProperties;
	@property final static TrSubDevice_PersonalForceField DefaultProperties() { mixin(MGDPC("TrSubDevice_PersonalForceField", "TrSubDevice_PersonalForceField TribesGame.Default__TrSubDevice_PersonalForceField")); }
}
