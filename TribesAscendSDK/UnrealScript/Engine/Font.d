module UnrealScript.Engine.Font;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.FontImportOptions;

extern(C++) interface Font : UObject
{
public extern(D):
	enum NULLCHARACTER = 127;
	struct FontCharacter
	{
		private ubyte __buffer__[24];
	public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12378], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	float GetScalingFactor(float HeightTest)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = HeightTest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12381], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	float GetAuthoredViewportHeight(float ViewportHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = ViewportHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12384], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	float GetMaxCharHeight()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12387], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void GetStringHeightAndWidth(ScriptString* InString, int* Height, int* Width)
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
