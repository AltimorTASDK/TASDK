module UnrealScript.TribesGame.TrRank_14;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_14 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_14")); }
	private static __gshared TrRank_14 mDefaultProperties;
	@property final static TrRank_14 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_14)("TrRank_14 TribesGame.Default__TrRank_14")); }
}
