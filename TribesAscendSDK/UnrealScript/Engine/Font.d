module UnrealScript.Engine.Font;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.FontImportOptions;

extern(C++) interface Font : UObject
{
	public static immutable auto NULLCHARACTER = 127;
	struct FontCharacter
	{
		public @property final auto ref int VerticalOffset() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __VerticalOffset[4];
		public @property final auto ref ubyte TextureIndex() { return *cast(ubyte*)(cast(size_t)&this + 16); }
		private ubyte __TextureIndex[1];
		public @property final auto ref int VSize() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __VSize[4];
		public @property final auto ref int USize() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __USize[4];
		public @property final auto ref int StartV() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __StartV[4];
		public @property final auto ref int StartU() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __StartU[4];
	}
	public @property final auto ref ScriptArray!(Font.FontCharacter) Characters() { return *cast(ScriptArray!(Font.FontCharacter)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptArray!(Texture2D) Textures() { return *cast(ScriptArray!(Texture2D)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptArray!(int) MaxCharHeight() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref int NumCharacters() { return *cast(int*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref FontImportOptions.FontImportOptionsData ImportOptions() { return *cast(FontImportOptions.FontImportOptionsData*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref int Kerning() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float Leading() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float Descent() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref float Ascent() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float EmScale() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref int IsRemapped() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
	final int GetResolutionPageIndex(float HeightTest)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = HeightTest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12378], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final float GetScalingFactor(float HeightTest)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = HeightTest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12381], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float GetAuthoredViewportHeight(float ViewportHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = ViewportHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12384], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final float GetMaxCharHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12387], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void GetStringHeightAndWidth(ScriptString* InString, int* Height, int* Width)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *InString;
		*cast(int*)&params[12] = *Height;
		*cast(int*)&params[16] = *Width;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12389], params.ptr, cast(void*)0);
		*InString = *cast(ScriptString*)params.ptr;
		*Height = *cast(int*)&params[12];
		*Width = *cast(int*)&params[16];
	}
}
