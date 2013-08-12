module UnrealScript.TribesGame.TrRank_11;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_11 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_11")); }
	private static __gshared TrRank_11 mDefaultProperties;
	@property final static TrRank_11 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_11)("TrRank_11 TribesGame.Default__TrRank_11")); }
}
