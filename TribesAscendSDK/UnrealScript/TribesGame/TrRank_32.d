module UnrealScript.TribesGame.TrRank_32;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_32 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_32")); }
	private static __gshared TrRank_32 mDefaultProperties;
	@property final static TrRank_32 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_32)("TrRank_32 TribesGame.Default__TrRank_32")); }
}
