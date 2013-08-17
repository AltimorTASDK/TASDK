module UnrealScript.GameFramework.SeqEvent_HudRenderText;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqEvent_HudRender;
import UnrealScript.Engine.Font;
import UnrealScript.Engine.HUD;

extern(C++) interface SeqEvent_HudRenderText : SeqEvent_HudRender
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.SeqEvent_HudRenderText")); }
	private static __gshared SeqEvent_HudRenderText mDefaultProperties;
	@property final static SeqEvent_HudRenderText DefaultProperties() { mixin(MGDPC("SeqEvent_HudRenderText", "SeqEvent_HudRenderText GameFramework.Default__SeqEvent_HudRenderText")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRender;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction Render() { mixin(MGF("mRender", "Function GameFramework.SeqEvent_HudRenderText.Render")); }
			ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function GameFramework.SeqEvent_HudRenderText.GetObjClassVersion")); }
		}
	}
	enum ETextDrawMethod : ubyte
	{
		DRAW_CenterText = 0,
		DRAW_WrapText = 1,
		DRAW_MAX = 2,
	}
	@property final auto ref
	{
		SeqEvent_HudRenderText.ETextDrawMethod TextDrawMethod() { mixin(MGPC("SeqEvent_HudRenderText.ETextDrawMethod", 308)); }
		ScriptString DisplayText() { mixin(MGPC("ScriptString", 296)); }
		Vector DisplayLocation() { mixin(MGPC("Vector", 284)); }
		UObject.Color DisplayColor() { mixin(MGPC("UObject.Color", 280)); }
		Font DisplayFont() { mixin(MGPC("Font", 276)); }
	}
final:
	void Render(Canvas TargetCanvas, HUD TargetHud)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = TargetCanvas;
		*cast(HUD*)&params[4] = TargetHud;
		(cast(ScriptObject)this).ProcessEvent(Functions.Render, params.ptr, cast(void*)0);
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
