module UnrealScript.Engine.TargetPoint;

import ScriptClasses;
import UnrealScript.Engine.Keypoint;
import UnrealScript.Engine.Texture2D;

extern(C++) interface TargetPoint : Keypoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TargetPoint")); }
	private static __gshared TargetPoint mDefaultProperties;
	@property final static TargetPoint DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TargetPoint)("TargetPoint Engine.Default__TargetPoint")); }
	@property final auto ref
	{
		int SpawnRefCount() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
		Texture2D SpawnSpriteTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 480); }
	}
}
