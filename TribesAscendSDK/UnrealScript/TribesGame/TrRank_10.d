module UnrealScript.TribesGame.TrRank_10;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_10 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_10")); }
	private static __gshared TrRank_10 mDefaultProperties;
	@property final static TrRank_10 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_10)("TrRank_10 TribesGame.Default__TrRank_10")); }
}
