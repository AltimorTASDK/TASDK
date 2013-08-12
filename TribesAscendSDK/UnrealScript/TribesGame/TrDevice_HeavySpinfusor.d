module UnrealScript.TribesGame.TrDevice_HeavySpinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Spinfusor;

extern(C++) interface TrDevice_HeavySpinfusor : TrDevice_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_HeavySpinfusor")); }
	private static __gshared TrDevice_HeavySpinfusor mDefaultProperties;
	@property final static TrDevice_HeavySpinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_HeavySpinfusor)("TrDevice_HeavySpinfusor TribesGame.Default__TrDevice_HeavySpinfusor")); }
}
