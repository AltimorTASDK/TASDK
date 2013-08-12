module UnrealScript.TribesGame.TrRank_36;

import ScriptClasses;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_36 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRank_36")); }
	private static __gshared TrRank_36 mDefaultProperties;
	@property final static TrRank_36 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRank_36)("TrRank_36 TribesGame.Default__TrRank_36")); }
}
