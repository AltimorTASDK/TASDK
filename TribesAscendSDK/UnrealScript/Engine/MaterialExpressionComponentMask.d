module UnrealScript.Engine.MaterialExpressionComponentMask;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionComponentMask : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionComponentMask")()); }
	private static __gshared MaterialExpressionComponentMask mDefaultProperties;
	@property final static MaterialExpressionComponentMask DefaultProperties() { mixin(MGDPC!(MaterialExpressionComponentMask, "MaterialExpressionComponentMask Engine.Default__MaterialExpressionComponentMask")()); }
	@property final
	{
		// WARNING: Property 'Input' has the same name as a defined type!
		bool A() { mixin(MGBPC!(136, 0x8)()); }
		bool A(bool val) { mixin(MSBPC!(136, 0x8)()); }
		bool B() { mixin(MGBPC!(136, 0x4)()); }
		bool B(bool val) { mixin(MSBPC!(136, 0x4)()); }
		bool G() { mixin(MGBPC!(136, 0x2)()); }
		bool G(bool val) { mixin(MSBPC!(136, 0x2)()); }
		bool R() { mixin(MGBPC!(136, 0x1)()); }
		bool R(bool val) { mixin(MSBPC!(136, 0x1)()); }
	}
}
