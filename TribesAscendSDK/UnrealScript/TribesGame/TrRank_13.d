module UnrealScript.TribesGame.TrRank_13;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_13 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_13")); }
	private static __gshared TrRank_13 mDefaultProperties;
	@property final static TrRank_13 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_13)("TrRank_13 TribesGame.Default__TrRank_13")); }
}
