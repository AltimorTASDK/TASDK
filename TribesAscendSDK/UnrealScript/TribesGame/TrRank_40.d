module UnrealScript.TribesGame.TrRank_40;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_40 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_40")); }
	private static __gshared TrRank_40 mDefaultProperties;
	@property final static TrRank_40 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_40)("TrRank_40 TribesGame.Default__TrRank_40")); }
}
