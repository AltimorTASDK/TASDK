module UnrealScript.TribesGame.TrRank_39;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_39 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_39")); }
	private static __gshared TrRank_39 mDefaultProperties;
	@property final static TrRank_39 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_39)("TrRank_39 TribesGame.Default__TrRank_39")); }
}
