module UnrealScript.TribesGame.TrRank_26;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_26 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_26")); }
	private static __gshared TrRank_26 mDefaultProperties;
	@property final static TrRank_26 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_26)("TrRank_26 TribesGame.Default__TrRank_26")); }
}
