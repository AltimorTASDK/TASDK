module UnrealScript.Engine.MaterialExpressionComment;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionComment : MaterialExpression
{
	public @property final auto ref ScriptString Text() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref int PosY() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref int PosX() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
}
