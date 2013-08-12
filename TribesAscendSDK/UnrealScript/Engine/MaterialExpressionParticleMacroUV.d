module UnrealScript.Engine.MaterialExpressionParticleMacroUV;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionParticleMacroUV : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionParticleMacroUV")); }
	@property final
	{
		bool bUseViewSpace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
		bool bUseViewSpace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	}
}
