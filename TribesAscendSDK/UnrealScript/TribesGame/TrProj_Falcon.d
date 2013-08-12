module UnrealScript.TribesGame.TrProj_Falcon;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Falcon : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_Falcon")); }
	private static __gshared TrProj_Falcon mDefaultProperties;
	@property final static TrProj_Falcon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_Falcon)("TrProj_Falcon TribesGame.Default__TrProj_Falcon")); }
}
