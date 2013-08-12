module UnrealScript.TribesGame.TrSubDevice_PersonalForceField;

import ScriptClasses;
import UnrealScript.TribesGame.TrSubDevice_ForceField;

extern(C++) interface TrSubDevice_PersonalForceField : TrSubDevice_ForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSubDevice_PersonalForceField")); }
	private static __gshared TrSubDevice_PersonalForceField mDefaultProperties;
	@property final static TrSubDevice_PersonalForceField DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSubDevice_PersonalForceField)("TrSubDevice_PersonalForceField TribesGame.Default__TrSubDevice_PersonalForceField")); }
}
