module UnrealScript.TribesGame.TrRank_17;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_17 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_17")); }
	private static __gshared TrRank_17 mDefaultProperties;
	@property final static TrRank_17 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_17)("TrRank_17 TribesGame.Default__TrRank_17")); }
}
