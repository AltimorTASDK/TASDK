module UnrealScript.Engine.ScriptedTexture;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.Canvas;

extern(C++) interface ScriptedTexture : TextureRenderTarget2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ScriptedTexture")); }
	private static __gshared ScriptedTexture mDefaultProperties;
	@property final static ScriptedTexture DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ScriptedTexture)("ScriptedTexture Engine.Default__ScriptedTexture")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mRender;
		public @property static final ScriptFunction Render() { return mRender ? mRender : (mRender = ScriptObject.Find!(ScriptFunction)("Function Engine.ScriptedTexture.Render")); }
	}
	@property final
	{
		bool bSkipNextClear() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x2) != 0; }
		bool bSkipNextClear(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x2; } return val; }
		bool bNeedsUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x1) != 0; }
		bool bNeedsUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x1; } return val; }
	}
	final void Render(Canvas C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.Render, params.ptr, cast(void*)0);
	}
}
