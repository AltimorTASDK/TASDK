module UnrealScript.TribesGame.TrRank_50;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_50 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_50")); }
	private static __gshared TrRank_50 mDefaultProperties;
	@property final static TrRank_50 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_50)("TrRank_50 TribesGame.Default__TrRank_50")); }
}
