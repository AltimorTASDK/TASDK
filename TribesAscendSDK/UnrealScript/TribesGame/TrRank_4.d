module UnrealScript.TribesGame.TrRank_4;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_4 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_4")); }
	private static __gshared TrRank_4 mDefaultProperties;
	@property final static TrRank_4 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_4)("TrRank_4 TribesGame.Default__TrRank_4")); }
}
