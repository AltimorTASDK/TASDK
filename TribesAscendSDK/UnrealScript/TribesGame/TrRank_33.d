module UnrealScript.TribesGame.TrRank_33;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_33 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_33")); }
	private static __gshared TrRank_33 mDefaultProperties;
	@property final static TrRank_33 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_33)("TrRank_33 TribesGame.Default__TrRank_33")); }
}
