module UnrealScript.TribesGame.TrProj_WhiteOut;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_WhiteOut : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_WhiteOut")); }
	private static __gshared TrProj_WhiteOut mDefaultProperties;
	@property final static TrProj_WhiteOut DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_WhiteOut)("TrProj_WhiteOut TribesGame.Default__TrProj_WhiteOut")); }
}
