module UnrealScript.TribesGame.TrRank_24;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_24 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_24")); }
	private static __gshared TrRank_24 mDefaultProperties;
	@property final static TrRank_24 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_24)("TrRank_24 TribesGame.Default__TrRank_24")); }
}
