module UnrealScript.TribesGame.TrDevice_NovaColt_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_NovaColt;

extern(C++) interface TrDevice_NovaColt_MKD : TrDevice_NovaColt
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_NovaColt_MKD")); }
	private static __gshared TrDevice_NovaColt_MKD mDefaultProperties;
	@property final static TrDevice_NovaColt_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_NovaColt_MKD)("TrDevice_NovaColt_MKD TribesGame.Default__TrDevice_NovaColt_MKD")); }
}
