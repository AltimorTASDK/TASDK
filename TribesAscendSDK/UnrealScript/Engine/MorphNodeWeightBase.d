module UnrealScript.Engine.MorphNodeWeightBase;

import ScriptClasses;
import UnrealScript.Engine.MorphNodeBase;

extern(C++) interface MorphNodeWeightBase : MorphNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MorphNodeWeightBase")); }
	struct MorphNodeConn
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MorphNodeWeightBase.MorphNodeConn")); }
		@property final auto ref
		{
			ScriptArray!(MorphNodeBase) ChildNodes() { return *cast(ScriptArray!(MorphNodeBase)*)(cast(size_t)&this + 0); }
			int DrawY() { return *cast(int*)(cast(size_t)&this + 20); }
			ScriptName ConnName() { return *cast(ScriptName*)(cast(size_t)&this + 12); }
		}
	}
	@property final auto ref ScriptArray!(MorphNodeWeightBase.MorphNodeConn) NodeConns() { return *cast(ScriptArray!(MorphNodeWeightBase.MorphNodeConn)*)(cast(size_t)cast(void*)this + 108); }
}
