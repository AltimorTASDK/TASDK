module UnrealScript.TribesGame.TrRank_5;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_5 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_5")); }
	private static __gshared TrRank_5 mDefaultProperties;
	@property final static TrRank_5 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_5)("TrRank_5 TribesGame.Default__TrRank_5")); }
}
