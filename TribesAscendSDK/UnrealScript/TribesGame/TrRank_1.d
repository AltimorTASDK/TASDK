module UnrealScript.TribesGame.TrRank_1;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_1 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_1")); }
	private static __gshared TrRank_1 mDefaultProperties;
	@property final static TrRank_1 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_1)("TrRank_1 TribesGame.Default__TrRank_1")); }
}
