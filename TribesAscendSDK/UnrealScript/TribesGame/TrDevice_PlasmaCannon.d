module UnrealScript.TribesGame.TrDevice_PlasmaCannon;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_PlasmaCannon : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_PlasmaCannon")); }
	private static __gshared TrDevice_PlasmaCannon mDefaultProperties;
	@property final static TrDevice_PlasmaCannon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_PlasmaCannon)("TrDevice_PlasmaCannon TribesGame.Default__TrDevice_PlasmaCannon")); }
}
