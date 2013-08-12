module UnrealScript.TribesGame.TrRank_31;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_31 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_31")); }
	private static __gshared TrRank_31 mDefaultProperties;
	@property final static TrRank_31 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_31)("TrRank_31 TribesGame.Default__TrRank_31")); }
}
