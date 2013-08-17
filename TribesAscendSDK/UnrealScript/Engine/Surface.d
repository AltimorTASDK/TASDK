module UnrealScript.Engine.Surface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Surface : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Surface")()); }
	private static __gshared Surface mDefaultProperties;
	@property final static Surface DefaultProperties() { mixin(MGDPC!(Surface, "Surface Engine.Default__Surface")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetSurfaceWidth;
			ScriptFunction mGetSurfaceHeight;
		}
		public @property static final
		{
			ScriptFunction GetSurfaceWidth() { mixin(MGF!("mGetSurfaceWidth", "Function Engine.Surface.GetSurfaceWidth")()); }
			ScriptFunction GetSurfaceHeight() { mixin(MGF!("mGetSurfaceHeight", "Function Engine.Surface.GetSurfaceHeight")()); }
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
