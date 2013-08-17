module UnrealScript.Engine.MaterialExpressionStaticSwitchParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionParameter;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionStaticSwitchParameter : MaterialExpressionParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionStaticSwitchParameter")()); }
	private static __gshared MaterialExpressionStaticSwitchParameter mDefaultProperties;
	@property final static MaterialExpressionStaticSwitchParameter DefaultProperties() { mixin(MGDPC!(MaterialExpressionStaticSwitchParameter, "MaterialExpressionStaticSwitchParameter Engine.Default__MaterialExpressionStaticSwitchParameter")()); }
	@property final
	{
		auto ref
		{
			UObject.Pointer InstanceOverride() { mixin(MGPC!(UObject.Pointer, 192)()); }
			MaterialExpression.ExpressionInput B() { mixin(MGPC!(MaterialExpression.ExpressionInput, 164)()); }
			MaterialExpression.ExpressionInput A() { mixin(MGPC!(MaterialExpression.ExpressionInput, 136)()); }
		}
		bool ExtendedCaptionDisplay() { mixin(MGBPC!(132, 0x2)()); }
		bool ExtendedCaptionDisplay(bool val) { mixin(MSBPC!(132, 0x2)()); }
		bool DefaultValue() { mixin(MGBPC!(132, 0x1)()); }
		bool DefaultValue(bool val) { mixin(MSBPC!(132, 0x1)()); }
	}
}
