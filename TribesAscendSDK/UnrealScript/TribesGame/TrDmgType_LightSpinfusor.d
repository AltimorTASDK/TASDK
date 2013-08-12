module UnrealScript.TribesGame.TrDmgType_LightSpinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_LightSpinfusor : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_LightSpinfusor")); }
	private static __gshared TrDmgType_LightSpinfusor mDefaultProperties;
	@property final static TrDmgType_LightSpinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_LightSpinfusor)("TrDmgType_LightSpinfusor TribesGame.Default__TrDmgType_LightSpinfusor")); }
}
