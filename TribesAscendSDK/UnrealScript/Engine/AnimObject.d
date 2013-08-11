module UnrealScript.Engine.AnimObject;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface AnimObject : UObject
{
	public @property final auto ref ScriptString CategoryDesc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int OutDrawY() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref int NodePosY() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref int NodePosX() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref int DrawHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int DrawWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
}
