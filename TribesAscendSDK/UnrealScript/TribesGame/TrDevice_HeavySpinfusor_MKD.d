module UnrealScript.TribesGame.TrDevice_HeavySpinfusor_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_HeavySpinfusor;

extern(C++) interface TrDevice_HeavySpinfusor_MKD : TrDevice_HeavySpinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_HeavySpinfusor_MKD")); }
	private static __gshared TrDevice_HeavySpinfusor_MKD mDefaultProperties;
	@property final static TrDevice_HeavySpinfusor_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_HeavySpinfusor_MKD)("TrDevice_HeavySpinfusor_MKD TribesGame.Default__TrDevice_HeavySpinfusor_MKD")); }
}
