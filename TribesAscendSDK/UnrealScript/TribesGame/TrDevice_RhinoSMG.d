module UnrealScript.TribesGame.TrDevice_RhinoSMG;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_RhinoSMG : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_RhinoSMG")); }
	private static __gshared TrDevice_RhinoSMG mDefaultProperties;
	@property final static TrDevice_RhinoSMG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_RhinoSMG)("TrDevice_RhinoSMG TribesGame.Default__TrDevice_RhinoSMG")); }
}
