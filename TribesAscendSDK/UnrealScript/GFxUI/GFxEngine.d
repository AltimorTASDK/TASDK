module UnrealScript.GFxUI.GFxEngine;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GFxEngine : UObject
{
public extern(D):
	struct GCReference
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			int m_statid() { return *cast(int*)(cast(size_t)&this + 8); }
			int m_count() { return *cast(int*)(cast(size_t)&this + 4); }
			UObject m_object() { return *cast(UObject*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(GFxEngine.GCReference) GCReferences() { return *cast(ScriptArray!(GFxEngine.GCReference)*)(cast(size_t)cast(void*)this + 60); }
		int RefCount() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	}
}
