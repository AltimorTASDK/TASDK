module UnrealScript.TribesGame.TrRank_45;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_45 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_45")); }
	private static __gshared TrRank_45 mDefaultProperties;
	@property final static TrRank_45 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_45)("TrRank_45 TribesGame.Default__TrRank_45")); }
}
