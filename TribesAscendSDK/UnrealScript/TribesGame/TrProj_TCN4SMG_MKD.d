module UnrealScript.TribesGame.TrProj_TCN4SMG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_TCN4SMG;

extern(C++) interface TrProj_TCN4SMG_MKD : TrProj_TCN4SMG
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_TCN4SMG_MKD")); }
	private static __gshared TrProj_TCN4SMG_MKD mDefaultProperties;
	@property final static TrProj_TCN4SMG_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_TCN4SMG_MKD)("TrProj_TCN4SMG_MKD TribesGame.Default__TrProj_TCN4SMG_MKD")); }
}
