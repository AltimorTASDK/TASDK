module UnrealScript.Engine.SequenceObject;

import ScriptClasses;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Sequence;

extern(C++) interface SequenceObject : UObject
{
	public @property final auto ref int ObjInstanceVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptArray!(ScriptString) ObjRemoveInProject() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref int DrawHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref int DrawWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
	public @property final bool bSuppressAutoComment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x10) != 0; }
	public @property final bool bSuppressAutoComment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x10; } return val; }
	public @property final bool bOutputObjCommentToScreen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x8) != 0; }
	public @property final bool bOutputObjCommentToScreen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x8; } return val; }
	public @property final bool bDrawLast() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x4) != 0; }
	public @property final bool bDrawLast(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x4; } return val; }
	public @property final bool bDrawFirst() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x2) != 0; }
	public @property final bool bDrawFirst(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x2; } return val; }
	public @property final bool bDeletable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
	public @property final bool bDeletable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	public @property final auto ref ScriptString ObjComment() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref UObject.Color ObjColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptString ObjCategory() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref ScriptString ObjName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref int ObjPosY() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref int ObjPosX() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref Sequence ParentSequence() { return *cast(Sequence*)(cast(size_t)cast(void*)this + 64); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4399], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void ScriptLog(ScriptString LogText, bool bWarning)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LogText;
		*cast(bool*)&params[12] = bWarning;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6710], params.ptr, cast(void*)0);
	}
	final WorldInfo GetWorldInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6713], params.ptr, cast(void*)0);
		return *cast(WorldInfo*)params.ptr;
	}
	final bool IsValidLevelSequenceObject()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6715], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsPastingIntoLevelSequenceAllowed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6717], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
