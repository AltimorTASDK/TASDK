module UnrealScript.TribesGame.TrDevice_LightSpinfusor_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_LightSpinfusor;

extern(C++) interface TrDevice_LightSpinfusor_MKD : TrDevice_LightSpinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_LightSpinfusor_MKD")); }
	private static __gshared TrDevice_LightSpinfusor_MKD mDefaultProperties;
	@property final static TrDevice_LightSpinfusor_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_LightSpinfusor_MKD)("TrDevice_LightSpinfusor_MKD TribesGame.Default__TrDevice_LightSpinfusor_MKD")); }
}
