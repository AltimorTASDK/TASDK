module UnrealScript.TribesGame.TrRank_29;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_29 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_29")); }
	private static __gshared TrRank_29 mDefaultProperties;
	@property final static TrRank_29 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_29)("TrRank_29 TribesGame.Default__TrRank_29")); }
}
