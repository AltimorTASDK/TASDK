module UnrealScript.Engine.Font;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.FontImportOptions;

extern(C++) interface Font : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Font")); }
	private static __gshared Font mDefaultProperties;
	@property final static Font DefaultProperties() { mixin(MGDPC("Font", "Font Engine.Default__Font")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetResolutionPageIndex;
			ScriptFunction mGetScalingFactor;
			ScriptFunction mGetAuthoredViewportHeight;
			ScriptFunction mGetMaxCharHeight;
			ScriptFunction mGetStringHeightAndWidth;
		}
		public @property static final
		{
			ScriptFunction GetResolutionPageIndex() { mixin(MGF("mGetResolutionPageIndex", "Function Engine.Font.GetResolutionPageIndex")); }
			ScriptFunction GetScalingFactor() { mixin(MGF("mGetScalingFactor", "Function Engine.Font.GetScalingFactor")); }
			ScriptFunction GetAuthoredViewportHeight() { mixin(MGF("mGetAuthoredViewportHeight", "Function Engine.Font.GetAuthoredViewportHeight")); }
			ScriptFunction GetMaxCharHeight() { mixin(MGF("mGetMaxCharHeight", "Function Engine.Font.GetMaxCharHeight")); }
			ScriptFunction GetStringHeightAndWidth() { mixin(MGF("mGetStringHeightAndWidth", "Function Engine.Font.GetStringHeightAndWidth")); }
		}
	}
	static struct Constants
	{
		enum NULLCHARACTER = 127;
	}
	struct FontCharacter
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Font.FontCharacter")); }
		@property final auto ref
		{
			int VerticalOffset() { mixin(MGPS("int", 20)); }
			ubyte TextureIndex() { mixin(MGPS("ubyte", 16)); }
			int VSize() { mixin(MGPS("int", 12)); }
			int USize() { mixin(MGPS("int", 8)); }
			int StartV() { mixin(MGPS("int", 4)); }
			int StartU() { mixin(MGPS("int", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Font.FontCharacter) Characters() { mixin(MGPC("ScriptArray!(Font.FontCharacter)", 60)); }
		ScriptArray!(Texture2D) Textures() { mixin(MGPC("ScriptArray!(Texture2D)", 72)); }
		ScriptArray!(int) MaxCharHeight() { mixin(MGPC("ScriptArray!(int)", 320)); }
		int NumCharacters() { mixin(MGPC("int", 316)); }
		FontImportOptions.FontImportOptionsData ImportOptions() { mixin(MGPC("FontImportOptions.FontImportOptionsData", 168)); }
		int Kerning() { mixin(MGPC("int", 164)); }
		float Leading() { mixin(MGPC("float", 160)); }
		float Descent() { mixin(MGPC("float", 156)); }
		float Ascent() { mixin(MGPC("float", 152)); }
		float EmScale() { mixin(MGPC("float", 148)); }
		int IsRemapped() { mixin(MGPC("int", 144)); }
		// ERROR: Unsupported object class 'MapProperty' for the property named 'CharRemap'!
	}
final:
	int GetResolutionPageIndex(float HeightTest)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = HeightTest;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetResolutionPageIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	float GetScalingFactor(float HeightTest)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = HeightTest;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScalingFactor, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	float GetAuthoredViewportHeight(float ViewportHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = ViewportHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAuthoredViewportHeight, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	float GetMaxCharHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxCharHeight, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void GetStringHeightAndWidth(ref in ScriptString InString, ref int Height, ref int Width)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = cast(ScriptString)InString;
		*cast(int*)&params[12] = Height;
		*cast(int*)&params[16] = Width;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringHeightAndWidth, params.ptr, cast(void*)0);
		Height = *cast(int*)&params[12];
		Width = *cast(int*)&params[16];
	}
}
