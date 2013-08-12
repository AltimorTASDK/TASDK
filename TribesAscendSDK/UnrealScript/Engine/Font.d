module UnrealScript.Engine.Font;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.FontImportOptions;

extern(C++) interface Font : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Font")); }
	private static __gshared Font mDefaultProperties;
	@property final static Font DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Font)("Font Engine.Default__Font")); }
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
			ScriptFunction GetResolutionPageIndex() { return mGetResolutionPageIndex ? mGetResolutionPageIndex : (mGetResolutionPageIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.Font.GetResolutionPageIndex")); }
			ScriptFunction GetScalingFactor() { return mGetScalingFactor ? mGetScalingFactor : (mGetScalingFactor = ScriptObject.Find!(ScriptFunction)("Function Engine.Font.GetScalingFactor")); }
			ScriptFunction GetAuthoredViewportHeight() { return mGetAuthoredViewportHeight ? mGetAuthoredViewportHeight : (mGetAuthoredViewportHeight = ScriptObject.Find!(ScriptFunction)("Function Engine.Font.GetAuthoredViewportHeight")); }
			ScriptFunction GetMaxCharHeight() { return mGetMaxCharHeight ? mGetMaxCharHeight : (mGetMaxCharHeight = ScriptObject.Find!(ScriptFunction)("Function Engine.Font.GetMaxCharHeight")); }
			ScriptFunction GetStringHeightAndWidth() { return mGetStringHeightAndWidth ? mGetStringHeightAndWidth : (mGetStringHeightAndWidth = ScriptObject.Find!(ScriptFunction)("Function Engine.Font.GetStringHeightAndWidth")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Font.FontCharacter")); }
		@property final auto ref
		{
			int VerticalOffset() { return *cast(int*)(cast(size_t)&this + 20); }
			ubyte TextureIndex() { return *cast(ubyte*)(cast(size_t)&this + 16); }
			int VSize() { return *cast(int*)(cast(size_t)&this + 12); }
			int USize() { return *cast(int*)(cast(size_t)&this + 8); }
			int StartV() { return *cast(int*)(cast(size_t)&this + 4); }
			int StartU() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Font.FontCharacter) Characters() { return *cast(ScriptArray!(Font.FontCharacter)*)(cast(size_t)cast(void*)this + 60); }
		ScriptArray!(Texture2D) Textures() { return *cast(ScriptArray!(Texture2D)*)(cast(size_t)cast(void*)this + 72); }
		ScriptArray!(int) MaxCharHeight() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 320); }
		int NumCharacters() { return *cast(int*)(cast(size_t)cast(void*)this + 316); }
		FontImportOptions.FontImportOptionsData ImportOptions() { return *cast(FontImportOptions.FontImportOptionsData*)(cast(size_t)cast(void*)this + 168); }
		int Kerning() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
		float Leading() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
		float Descent() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
		float Ascent() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
		float EmScale() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
		int IsRemapped() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
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
	void GetStringHeightAndWidth(ScriptString* InString, int* Height, int* Width)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *InString;
		*cast(int*)&params[12] = *Height;
		*cast(int*)&params[16] = *Width;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringHeightAndWidth, params.ptr, cast(void*)0);
		*InString = *cast(ScriptString*)params.ptr;
		*Height = *cast(int*)&params[12];
		*Width = *cast(int*)&params[16];
	}
}
