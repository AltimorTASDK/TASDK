module UnrealScript.Engine.MaterialExpressionCompound;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCompound : MaterialExpression
{
	public @property final auto ref ScriptArray!(MaterialExpression) MaterialExpressions() { return *cast(ScriptArray!(MaterialExpression)*)(cast(size_t)cast(void*)this + 108); }
	public @property final bool bExpanded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
	public @property final bool bExpanded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	public @property final auto ref ScriptString Caption() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
}
