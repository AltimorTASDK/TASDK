module UnrealScript.TribesGame.TrDmgType_RhinoSMG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_RhinoSMG_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_RhinoSMG_MKD")); }
	private static __gshared TrDmgType_RhinoSMG_MKD mDefaultProperties;
	@property final static TrDmgType_RhinoSMG_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_RhinoSMG_MKD)("TrDmgType_RhinoSMG_MKD TribesGame.Default__TrDmgType_RhinoSMG_MKD")); }
}
