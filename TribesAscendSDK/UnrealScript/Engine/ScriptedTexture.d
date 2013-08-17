module UnrealScript.Engine.ScriptedTexture;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.Canvas;

extern(C++) interface ScriptedTexture : TextureRenderTarget2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ScriptedTexture")); }
	private static __gshared ScriptedTexture mDefaultProperties;
	@property final static ScriptedTexture DefaultProperties() { mixin(MGDPC("ScriptedTexture", "ScriptedTexture Engine.Default__ScriptedTexture")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mRender;
		public @property static final ScriptFunction Render() { mixin(MGF("mRender", "Function Engine.ScriptedTexture.Render")); }
	}
	@property final
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__Render__Delegate'!
		bool bSkipNextClear() { mixin(MGBPC(276, 0x2)); }
		bool bSkipNextClear(bool val) { mixin(MSBPC(276, 0x2)); }
		bool bNeedsUpdate() { mixin(MGBPC(276, 0x1)); }
		bool bNeedsUpdate(bool val) { mixin(MSBPC(276, 0x1)); }
	}
	final void Render(Canvas C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.Render, params.ptr, cast(void*)0);
	}
}
