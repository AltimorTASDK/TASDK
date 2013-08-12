module UnrealScript.Engine.Surface;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Surface : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Surface")); }
	private static __gshared Surface mDefaultProperties;
	@property final static Surface DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Surface)("Surface Engine.Default__Surface")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetSurfaceWidth;
			ScriptFunction mGetSurfaceHeight;
		}
		public @property static final
		{
			ScriptFunction GetSurfaceWidth() { return mGetSurfaceWidth ? mGetSurfaceWidth : (mGetSurfaceWidth = ScriptObject.Find!(ScriptFunction)("Function Engine.Surface.GetSurfaceWidth")); }
			ScriptFunction GetSurfaceHeight() { return mGetSurfaceHeight ? mGetSurfaceHeight : (mGetSurfaceHeight = ScriptObject.Find!(ScriptFunction)("Function Engine.Surface.GetSurfaceHeight")); }
		}
	}
final:
	float GetSurfaceWidth()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSurfaceWidth, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetSurfaceHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSurfaceHeight, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
