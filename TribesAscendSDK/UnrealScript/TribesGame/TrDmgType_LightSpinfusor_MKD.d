module UnrealScript.TribesGame.TrDmgType_LightSpinfusor_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_LightSpinfusor_MKD : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_LightSpinfusor_MKD")); }
	private static __gshared TrDmgType_LightSpinfusor_MKD mDefaultProperties;
	@property final static TrDmgType_LightSpinfusor_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_LightSpinfusor_MKD)("TrDmgType_LightSpinfusor_MKD TribesGame.Default__TrDmgType_LightSpinfusor_MKD")); }
}
