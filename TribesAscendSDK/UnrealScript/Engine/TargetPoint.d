module UnrealScript.Engine.TargetPoint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Keypoint;
import UnrealScript.Engine.Texture2D;

extern(C++) interface TargetPoint : Keypoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TargetPoint")()); }
	private static __gshared TargetPoint mDefaultProperties;
	@property final static TargetPoint DefaultProperties() { mixin(MGDPC!(TargetPoint, "TargetPoint Engine.Default__TargetPoint")()); }
	@property final auto ref
	{
		int SpawnRefCount() { mixin(MGPC!(int, 484)()); }
		Texture2D SpawnSpriteTexture() { mixin(MGPC!(Texture2D, 480)()); }
	}
}
