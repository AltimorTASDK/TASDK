module UnrealScript.TribesGame.TrDmgType_ForceField;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_ForceField : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ForceField")); }
	private static __gshared TrDmgType_ForceField mDefaultProperties;
	@property final static TrDmgType_ForceField DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_ForceField)("TrDmgType_ForceField TribesGame.Default__TrDmgType_ForceField")); }
}
