module UnrealScript.Engine.MaterialExpressionScreenPosition;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionScreenPosition : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionScreenPosition")); }
	private static __gshared MaterialExpressionScreenPosition mDefaultProperties;
	@property final static MaterialExpressionScreenPosition DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionScreenPosition)("MaterialExpressionScreenPosition Engine.Default__MaterialExpressionScreenPosition")); }
	@property final
	{
		bool ScreenAlign() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
		bool ScreenAlign(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	}
}
