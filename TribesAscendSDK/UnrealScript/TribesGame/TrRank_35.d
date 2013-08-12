module UnrealScript.TribesGame.TrRank_35;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_35 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_35")); }
	private static __gshared TrRank_35 mDefaultProperties;
	@property final static TrRank_35 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_35)("TrRank_35 TribesGame.Default__TrRank_35")); }
}
