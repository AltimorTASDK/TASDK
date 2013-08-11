module UnrealScript.Engine.KismetBookMark;

import ScriptClasses;
import UnrealScript.Engine.BookMark2D;

extern(C++) interface KismetBookMark : BookMark2D
{
	public @property final auto ref ScriptString BookMarkSequencePathName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
}
