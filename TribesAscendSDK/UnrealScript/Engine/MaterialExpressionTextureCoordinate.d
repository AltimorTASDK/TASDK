module UnrealScript.Engine.MaterialExpressionTextureCoordinate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTextureCoordinate : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialExpressionTextureCoordinate")()); }
	private static __gshared MaterialExpressionTextureCoordinate mDefaultProperties;
	@property final static MaterialExpressionTextureCoordinate DefaultProperties() { mixin(MGDPC!(MaterialExpressionTextureCoordinate, "MaterialExpressionTextureCoordinate Engine.Default__MaterialExpressionTextureCoordinate")()); }
	@property final
	{
		auto ref
		{
			float VTiling() { mixin(MGPC!(float, 116)()); }
			float UTiling() { mixin(MGPC!(float, 112)()); }
			int CoordinateIndex() { mixin(MGPC!(int, 108)()); }
		}
		bool UnMirrorV() { mixin(MGBPC!(120, 0x2)()); }
		bool UnMirrorV(bool val) { mixin(MSBPC!(120, 0x2)()); }
		bool UnMirrorU() { mixin(MGBPC!(120, 0x1)()); }
		bool UnMirrorU(bool val) { mixin(MSBPC!(120, 0x1)()); }
	}
}
