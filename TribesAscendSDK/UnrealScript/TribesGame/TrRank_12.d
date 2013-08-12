module UnrealScript.TribesGame.TrRank_12;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_12 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_12")); }
	private static __gshared TrRank_12 mDefaultProperties;
	@property final static TrRank_12 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_12)("TrRank_12 TribesGame.Default__TrRank_12")); }
}
