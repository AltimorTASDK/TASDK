module UnrealScript.TribesGame.TrRank_20;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_20 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_20")); }
	private static __gshared TrRank_20 mDefaultProperties;
	@property final static TrRank_20 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_20)("TrRank_20 TribesGame.Default__TrRank_20")); }
}
