module UnrealScript.TribesGame.TrRank_48;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_48 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_48")); }
	private static __gshared TrRank_48 mDefaultProperties;
	@property final static TrRank_48 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_48)("TrRank_48 TribesGame.Default__TrRank_48")); }
}
