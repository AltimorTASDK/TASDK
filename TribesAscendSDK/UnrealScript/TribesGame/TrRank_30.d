module UnrealScript.TribesGame.TrRank_30;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_30 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_30")); }
	private static __gshared TrRank_30 mDefaultProperties;
	@property final static TrRank_30 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_30)("TrRank_30 TribesGame.Default__TrRank_30")); }
}
