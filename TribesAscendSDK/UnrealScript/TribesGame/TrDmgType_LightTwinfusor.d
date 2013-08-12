module UnrealScript.TribesGame.TrDmgType_LightTwinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_LightTwinfusor : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_LightTwinfusor")); }
	private static __gshared TrDmgType_LightTwinfusor mDefaultProperties;
	@property final static TrDmgType_LightTwinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_LightTwinfusor)("TrDmgType_LightTwinfusor TribesGame.Default__TrDmgType_LightTwinfusor")); }
}
