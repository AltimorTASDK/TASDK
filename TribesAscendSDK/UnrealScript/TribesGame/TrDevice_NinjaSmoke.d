module UnrealScript.TribesGame.TrDevice_NinjaSmoke;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_NinjaSmoke : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_NinjaSmoke")); }
	private static __gshared TrDevice_NinjaSmoke mDefaultProperties;
	@property final static TrDevice_NinjaSmoke DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_NinjaSmoke)("TrDevice_NinjaSmoke TribesGame.Default__TrDevice_NinjaSmoke")); }
}
