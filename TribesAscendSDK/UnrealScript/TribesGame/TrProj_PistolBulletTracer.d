module UnrealScript.TribesGame.TrProj_PistolBulletTracer;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Tracer;

extern(C++) interface TrProj_PistolBulletTracer : TrProj_Tracer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_PistolBulletTracer")); }
	private static __gshared TrProj_PistolBulletTracer mDefaultProperties;
	@property final static TrProj_PistolBulletTracer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_PistolBulletTracer)("TrProj_PistolBulletTracer TribesGame.Default__TrProj_PistolBulletTracer")); }
}
