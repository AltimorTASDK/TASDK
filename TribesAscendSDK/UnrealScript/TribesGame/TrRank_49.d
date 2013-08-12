module UnrealScript.TribesGame.TrRank_49;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_49 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_49")); }
	private static __gshared TrRank_49 mDefaultProperties;
	@property final static TrRank_49 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_49)("TrRank_49 TribesGame.Default__TrRank_49")); }
}
