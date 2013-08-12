module UnrealScript.TribesGame.TrRank_28;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_28 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_28")); }
	private static __gshared TrRank_28 mDefaultProperties;
	@property final static TrRank_28 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_28)("TrRank_28 TribesGame.Default__TrRank_28")); }
}
