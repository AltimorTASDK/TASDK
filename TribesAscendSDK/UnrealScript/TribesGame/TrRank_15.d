module UnrealScript.TribesGame.TrRank_15;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_15 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_15")); }
	private static __gshared TrRank_15 mDefaultProperties;
	@property final static TrRank_15 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_15)("TrRank_15 TribesGame.Default__TrRank_15")); }
}
