module UnrealScript.Engine.Texture2DComposite;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Texture;

extern(C++) interface Texture2DComposite : Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Texture2DComposite")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSourceTexturesFullyStreamedIn;
			ScriptFunction mUpdateCompositeTexture;
			ScriptFunction mResetSourceRegions;
		}
		public @property static final
		{
			ScriptFunction SourceTexturesFullyStreamedIn() { return mSourceTexturesFullyStreamedIn ? mSourceTexturesFullyStreamedIn : (mSourceTexturesFullyStreamedIn = ScriptObject.Find!(ScriptFunction)("Function Engine.Texture2DComposite.SourceTexturesFullyStreamedIn")); }
			ScriptFunction UpdateCompositeTexture() { return mUpdateCompositeTexture ? mUpdateCompositeTexture : (mUpdateCompositeTexture = ScriptObject.Find!(ScriptFunction)("Function Engine.Texture2DComposite.UpdateCompositeTexture")); }
			ScriptFunction ResetSourceRegions() { return mResetSourceRegions ? mResetSourceRegions : (mResetSourceRegions = ScriptObject.Find!(ScriptFunction)("Function Engine.Texture2DComposite.ResetSourceRegions")); }
		}
	}
	struct SourceTexture2DRegion
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Texture2DComposite.SourceTexture2DRegion")); }
		@property final auto ref
		{
			// WARNING: Property 'Texture2D' has the same name as a defined type!
			int SizeY() { return *cast(int*)(cast(size_t)&this + 12); }
			int SizeX() { return *cast(int*)(cast(size_t)&this + 8); }
			int OffsetY() { return *cast(int*)(cast(size_t)&this + 4); }
			int OffsetX() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Texture2DComposite.SourceTexture2DRegion) SourceRegions() { return *cast(ScriptArray!(Texture2DComposite.SourceTexture2DRegion)*)(cast(size_t)cast(void*)this + 236); }
		int MaxTextureSize() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
	}
final:
	bool SourceTexturesFullyStreamedIn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SourceTexturesFullyStreamedIn, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void UpdateCompositeTexture(int NumMipsToGenerate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NumMipsToGenerate;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCompositeTexture, params.ptr, cast(void*)0);
	}
	void ResetSourceRegions()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetSourceRegions, cast(void*)0, cast(void*)0);
	}
}
