module UnrealScript.Engine.MorphNodeWeightBase;

import ScriptClasses;
import UnrealScript.Engine.MorphNodeBase;

extern(C++) interface MorphNodeWeightBase : MorphNodeBase
{
	struct MorphNodeConn
	{
		public @property final auto ref ScriptArray!(MorphNodeBase) ChildNodes() { return *cast(ScriptArray!(MorphNodeBase)*)(cast(size_t)&this + 0); }
		private ubyte __ChildNodes[12];
		public @property final auto ref int DrawY() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __DrawY[4];
		public @property final auto ref ScriptName ConnName() { return *cast(ScriptName*)(cast(size_t)&this + 12); }
		private ubyte __ConnName[8];
	}
	public @property final auto ref ScriptArray!(MorphNodeWeightBase.MorphNodeConn) NodeConns() { return *cast(ScriptArray!(MorphNodeWeightBase.MorphNodeConn)*)(cast(size_t)cast(void*)this + 108); }
}
