module UnrealScript.TribesGame.TrDevice_Spinfusor_100X;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Spinfusor;

extern(C++) interface TrDevice_Spinfusor_100X : TrDevice_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Spinfusor_100X")); }
	private static __gshared TrDevice_Spinfusor_100X mDefaultProperties;
	@property final static TrDevice_Spinfusor_100X DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_Spinfusor_100X)("TrDevice_Spinfusor_100X TribesGame.Default__TrDevice_Spinfusor_100X")); }
}
