module UnrealScript.TribesGame.TrRank_22;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_22 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_22")); }
	private static __gshared TrRank_22 mDefaultProperties;
	@property final static TrRank_22 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_22)("TrRank_22 TribesGame.Default__TrRank_22")); }
}
