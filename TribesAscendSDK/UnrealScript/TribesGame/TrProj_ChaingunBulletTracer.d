module UnrealScript.TribesGame.TrProj_ChaingunBulletTracer;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Tracer;

extern(C++) interface TrProj_ChaingunBulletTracer : TrProj_Tracer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ChaingunBulletTracer")); }
}
