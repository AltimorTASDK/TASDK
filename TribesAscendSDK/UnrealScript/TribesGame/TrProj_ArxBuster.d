module UnrealScript.TribesGame.TrProj_ArxBuster;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_StickyGrenade;

extern(C++) interface TrProj_ArxBuster : TrProj_StickyGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ArxBuster")); }
	private static __gshared TrProj_ArxBuster mDefaultProperties;
	@property final static TrProj_ArxBuster DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_ArxBuster)("TrProj_ArxBuster TribesGame.Default__TrProj_ArxBuster")); }
}
