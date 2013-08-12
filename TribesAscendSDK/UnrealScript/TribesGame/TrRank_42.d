module UnrealScript.TribesGame.TrRank_42;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_42 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_42")); }
	private static __gshared TrRank_42 mDefaultProperties;
	@property final static TrRank_42 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_42)("TrRank_42 TribesGame.Default__TrRank_42")); }
}
