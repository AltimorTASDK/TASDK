module UnrealScript.TribesGame.TrRank_25;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_25 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_25")); }
	private static __gshared TrRank_25 mDefaultProperties;
	@property final static TrRank_25 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_25)("TrRank_25 TribesGame.Default__TrRank_25")); }
}
