module UnrealScript.TribesGame.TrDevice_LightSpinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Spinfusor;

extern(C++) interface TrDevice_LightSpinfusor : TrDevice_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_LightSpinfusor")); }
	private static __gshared TrDevice_LightSpinfusor mDefaultProperties;
	@property final static TrDevice_LightSpinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_LightSpinfusor)("TrDevice_LightSpinfusor TribesGame.Default__TrDevice_LightSpinfusor")); }
}
