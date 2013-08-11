module UnrealScript.GFxUI.GFxEngine;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GFxEngine : UObject
{
	struct GCReference
	{
		public @property final auto ref int m_statid() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __m_statid[4];
		public @property final auto ref int m_count() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __m_count[4];
		public @property final auto ref UObject m_object() { return *cast(UObject*)(cast(size_t)&this + 0); }
		private ubyte __m_object[4];
	}
	public @property final auto ref ScriptArray!(GFxEngine.GCReference) GCReferences() { return *cast(ScriptArray!(GFxEngine.GCReference)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref int RefCount() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
}
