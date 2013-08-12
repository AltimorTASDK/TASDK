module UnrealScript.Engine.MaterialExpressionCompound;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionCompound : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionCompound")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialExpression) MaterialExpressions() { return *cast(ScriptArray!(MaterialExpression)*)(cast(size_t)cast(void*)this + 108); }
			ScriptString Caption() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
		}
		bool bExpanded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
		bool bExpanded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	}
}
