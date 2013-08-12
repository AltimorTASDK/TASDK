module UnrealScript.TribesGame.TrRank_21;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_21 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_21")); }
	private static __gshared TrRank_21 mDefaultProperties;
	@property final static TrRank_21 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_21)("TrRank_21 TribesGame.Default__TrRank_21")); }
}
