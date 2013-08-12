module UnrealScript.TribesGame.TrProj_NinjaSmoke;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_NinjaSmoke : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_NinjaSmoke")); }
	private static __gshared TrProj_NinjaSmoke mDefaultProperties;
	@property final static TrProj_NinjaSmoke DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_NinjaSmoke)("TrProj_NinjaSmoke TribesGame.Default__TrProj_NinjaSmoke")); }
}
