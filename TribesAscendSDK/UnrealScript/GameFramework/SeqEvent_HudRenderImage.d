module UnrealScript.GameFramework.SeqEvent_HudRenderImage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqEvent_HudRender;
import UnrealScript.Engine.HUD;

extern(C++) interface SeqEvent_HudRenderImage : SeqEvent_HudRender
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqEvent_HudRenderImage")()); }
	private static __gshared SeqEvent_HudRenderImage mDefaultProperties;
	@property final static SeqEvent_HudRenderImage DefaultProperties() { mixin(MGDPC!(SeqEvent_HudRenderImage, "SeqEvent_HudRenderImage GameFramework.Default__SeqEvent_HudRenderImage")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mRender;
		public @property static final ScriptFunction Render() { mixin(MGF!("mRender", "Function GameFramework.SeqEvent_HudRenderImage.Render")()); }
	}
	@property final auto ref
	{
		float VL() { mixin(MGPC!("float", 328)()); }
		float UL() { mixin(MGPC!("float", 324)()); }
		float V() { mixin(MGPC!("float", 320)()); }
		float U() { mixin(MGPC!("float", 316)()); }
		float YL() { mixin(MGPC!("float", 312)()); }
		float XL() { mixin(MGPC!("float", 308)()); }
		Texture2D DisplayTexture() { mixin(MGPC!("Texture2D", 304)()); }
		Vector DisplayLocation() { mixin(MGPC!("Vector", 292)()); }
		UObject.LinearColor DisplayColor() { mixin(MGPC!("UObject.LinearColor", 276)()); }
	}
	final void Render(Canvas TargetCanvas, HUD TargetHud)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = TargetCanvas;
		*cast(HUD*)&params[4] = TargetHud;
		(cast(ScriptObject)this).ProcessEvent(Functions.Render, params.ptr, cast(void*)0);
	}
}
