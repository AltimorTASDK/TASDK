module UnrealScript.TribesGame.TrRank_37;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_37 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_37")); }
	private static __gshared TrRank_37 mDefaultProperties;
	@property final static TrRank_37 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_37)("TrRank_37 TribesGame.Default__TrRank_37")); }
}
