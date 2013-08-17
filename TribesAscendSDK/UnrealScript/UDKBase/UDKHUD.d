module UnrealScript.UDKBase.UDKHUD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.GameFramework.MobileHUD;
import UnrealScript.Engine.Font;

extern(C++) interface UDKHUD : MobileHUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKHUD")()); }
	private static __gshared UDKHUD mDefaultProperties;
	@property final static UDKHUD DefaultProperties() { mixin(MGDPC!(UDKHUD, "UDKHUD UDKBase.Default__UDKHUD")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDrawGlowText;
			ScriptFunction mTranslateBindToFont;
		}
		public @property static final
		{
			ScriptFunction DrawGlowText() { mixin(MGF!("mDrawGlowText", "Function UDKBase.UDKHUD.DrawGlowText")()); }
			ScriptFunction TranslateBindToFont() { mixin(MGF!("mTranslateBindToFont", "Function UDKBase.UDKHUD.TranslateBindToFont")()); }
		}
	}
	@property final auto ref
	{
		Font BindTextFont() { mixin(MGPC!("Font", 1424)()); }
		Font ConsoleIconFont() { mixin(MGPC!("Font", 1420)()); }
		Canvas.FontRenderInfo TextRenderInfo() { mixin(MGPC!("Canvas.FontRenderInfo", 1380)()); }
		float PulseMultiplier() { mixin(MGPC!("float", 1376)()); }
		float PulseSplit() { mixin(MGPC!("float", 1372)()); }
		float PulseDuration() { mixin(MGPC!("float", 1368)()); }
		Font GlowFonts() { mixin(MGPC!("Font", 1360)()); }
	}
final:
	void DrawGlowText(ScriptString Text, float X, float Y, float* MaxHeightInPixels = null, float* PulseTime = null, bool* bRightJustified = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(float*)&params[12] = X;
		*cast(float*)&params[16] = Y;
		if (MaxHeightInPixels !is null)
			*cast(float*)&params[20] = *MaxHeightInPixels;
		if (PulseTime !is null)
			*cast(float*)&params[24] = *PulseTime;
		if (bRightJustified !is null)
			*cast(bool*)&params[28] = *bRightJustified;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawGlowText, params.ptr, cast(void*)0);
	}
	static void TranslateBindToFont(ScriptString InBindStr, ref Font DrawFont, ref ScriptString OutBindStr)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InBindStr;
		*cast(Font*)&params[12] = DrawFont;
		*cast(ScriptString*)&params[16] = OutBindStr;
		StaticClass.ProcessEvent(Functions.TranslateBindToFont, params.ptr, cast(void*)0);
		DrawFont = *cast(Font*)&params[12];
		OutBindStr = *cast(ScriptString*)&params[16];
	}
}
