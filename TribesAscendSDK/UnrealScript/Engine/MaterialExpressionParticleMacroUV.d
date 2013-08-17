module UnrealScript.Engine.MaterialExpressionParticleMacroUV;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionParticleMacroUV : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionParticleMacroUV")()); }
	private static __gshared MaterialExpressionParticleMacroUV mDefaultProperties;
	@property final static MaterialExpressionParticleMacroUV DefaultProperties() { mixin(MGDPC!(MaterialExpressionParticleMacroUV, "MaterialExpressionParticleMacroUV Engine.Default__MaterialExpressionParticleMacroUV")()); }
	@property final
	{
		bool bUseViewSpace() { mixin(MGBPC!(108, 0x1)()); }
		bool bUseViewSpace(bool val) { mixin(MSBPC!(108, 0x1)()); }
	}
}
