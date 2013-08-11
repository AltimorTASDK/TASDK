module UnrealScript.Engine.MultiFont;

import ScriptClasses;
import UnrealScript.Engine.Font;

extern(C++) interface MultiFont : Font
{
public extern(D):
	@property final auto ref ScriptArray!(float) ResolutionTestTable() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 332); }
	final int GetResolutionTestTableIndex(float HeightTest)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = HeightTest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20669], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}
