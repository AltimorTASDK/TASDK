module UnrealScript.Engine.AnimNodeBlendDirectional;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface AnimNodeBlendDirectional : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeBlendDirectional")()); }
	private static __gshared AnimNodeBlendDirectional mDefaultProperties;
	@property final static AnimNodeBlendDirectional DefaultProperties() { mixin(MGDPC!(AnimNodeBlendDirectional, "AnimNodeBlendDirectional Engine.Default__AnimNodeBlendDirectional")()); }
	@property final
	{
		auto ref
		{
			Rotator RotationOffset() { mixin(MGPC!("Rotator", 256)()); }
			int SingleAnimAtOrAboveLOD() { mixin(MGPC!("int", 252)()); }
			float DirAngle() { mixin(MGPC!("float", 248)()); }
			float DirDegreesPerSecond() { mixin(MGPC!("float", 244)()); }
		}
		bool bUseAcceleration() { mixin(MGBPC!(268, 0x1)()); }
		bool bUseAcceleration(bool val) { mixin(MSBPC!(268, 0x1)()); }
	}
}
