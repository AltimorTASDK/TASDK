module UnrealScript.Engine.Level;

import ScriptClasses;
import UnrealScript.Engine.LevelBase;

extern(C++) interface Level : LevelBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Level")); }
	private static __gshared Level mDefaultProperties;
	@property final static Level DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Level)("Level Engine.Default__Level")); }
	@property final auto ref
	{
		float LightmapTotalSize() { return *cast(float*)(cast(size_t)cast(void*)this + 360); }
		float ShadowmapTotalSize() { return *cast(float*)(cast(size_t)cast(void*)this + 364); }
	}
}
