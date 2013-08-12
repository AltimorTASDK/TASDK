module UnrealScript.TribesGame.TrRank_27;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_27 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_27")); }
	private static __gshared TrRank_27 mDefaultProperties;
	@property final static TrRank_27 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_27)("TrRank_27 TribesGame.Default__TrRank_27")); }
}
