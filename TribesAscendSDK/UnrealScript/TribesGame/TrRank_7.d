module UnrealScript.TribesGame.TrRank_7;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_7 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_7")); }
	private static __gshared TrRank_7 mDefaultProperties;
	@property final static TrRank_7 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_7)("TrRank_7 TribesGame.Default__TrRank_7")); }
}
