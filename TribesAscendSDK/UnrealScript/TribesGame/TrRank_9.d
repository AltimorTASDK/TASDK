module UnrealScript.TribesGame.TrRank_9;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_9 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_9")); }
	private static __gshared TrRank_9 mDefaultProperties;
	@property final static TrRank_9 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_9)("TrRank_9 TribesGame.Default__TrRank_9")); }
}
