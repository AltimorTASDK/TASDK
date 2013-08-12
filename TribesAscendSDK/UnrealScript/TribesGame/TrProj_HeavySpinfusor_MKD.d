module UnrealScript.TribesGame.TrProj_HeavySpinfusor_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_HeavySpinfusor;

extern(C++) interface TrProj_HeavySpinfusor_MKD : TrProj_HeavySpinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_HeavySpinfusor_MKD")); }
	private static __gshared TrProj_HeavySpinfusor_MKD mDefaultProperties;
	@property final static TrProj_HeavySpinfusor_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_HeavySpinfusor_MKD)("TrProj_HeavySpinfusor_MKD TribesGame.Default__TrProj_HeavySpinfusor_MKD")); }
}
