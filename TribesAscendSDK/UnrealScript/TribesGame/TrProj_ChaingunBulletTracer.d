module UnrealScript.TribesGame.TrProj_ChaingunBulletTracer;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Tracer;

extern(C++) interface TrProj_ChaingunBulletTracer : TrProj_Tracer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ChaingunBulletTracer")); }
	private static __gshared TrProj_ChaingunBulletTracer mDefaultProperties;
	@property final static TrProj_ChaingunBulletTracer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_ChaingunBulletTracer)("TrProj_ChaingunBulletTracer TribesGame.Default__TrProj_ChaingunBulletTracer")); }
}
