module UnrealScript.Engine.AnimObject;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface AnimObject : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptString CategoryDesc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
		int OutDrawY() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
		int NodePosY() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
		int NodePosX() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
		int DrawHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		int DrawWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	}
}
