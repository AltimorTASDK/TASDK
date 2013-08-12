module UnrealScript.TribesGame.TrDmgType_RhinoSMG;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_RhinoSMG : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_RhinoSMG")); }
	private static __gshared TrDmgType_RhinoSMG mDefaultProperties;
	@property final static TrDmgType_RhinoSMG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_RhinoSMG)("TrDmgType_RhinoSMG TribesGame.Default__TrDmgType_RhinoSMG")); }
}
