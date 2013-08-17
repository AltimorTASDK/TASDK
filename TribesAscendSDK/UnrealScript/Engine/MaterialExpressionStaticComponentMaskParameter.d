module UnrealScript.Engine.MaterialExpressionStaticComponentMaskParameter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionParameter;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionStaticComponentMaskParameter : MaterialExpressionParameter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpressionStaticComponentMaskParameter")); }
	private static __gshared MaterialExpressionStaticComponentMaskParameter mDefaultProperties;
	@property final static MaterialExpressionStaticComponentMaskParameter DefaultProperties() { mixin(MGDPC("MaterialExpressionStaticComponentMaskParameter", "MaterialExpressionStaticComponentMaskParameter Engine.Default__MaterialExpressionStaticComponentMaskParameter")); }
	@property final
	{
		auto ref
		{
			UObject.Pointer InstanceOverride() { mixin(MGPC("UObject.Pointer", 164)); }
			// WARNING: Property 'Input' has the same name as a defined type!
		}
		bool DefaultA() { mixin(MGBPC(160, 0x8)); }
		bool DefaultA(bool val) { mixin(MSBPC(160, 0x8)); }
		bool DefaultB() { mixin(MGBPC(160, 0x4)); }
		bool DefaultB(bool val) { mixin(MSBPC(160, 0x4)); }
		bool DefaultG() { mixin(MGBPC(160, 0x2)); }
		bool DefaultG(bool val) { mixin(MSBPC(160, 0x2)); }
		bool DefaultR() { mixin(MGBPC(160, 0x1)); }
		bool DefaultR(bool val) { mixin(MSBPC(160, 0x1)); }
	}
}
