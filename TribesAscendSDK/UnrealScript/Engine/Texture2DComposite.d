module UnrealScript.Engine.Texture2DComposite;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Texture;

extern(C++) interface Texture2DComposite : Texture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Texture2DComposite")()); }
	private static __gshared Texture2DComposite mDefaultProperties;
	@property final static Texture2DComposite DefaultProperties() { mixin(MGDPC!(Texture2DComposite, "Texture2DComposite Engine.Default__Texture2DComposite")()); }
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
			ScriptFunction SourceTexturesFullyStreamedIn() { mixin(MGF!("mSourceTexturesFullyStreamedIn", "Function Engine.Texture2DComposite.SourceTexturesFullyStreamedIn")()); }
			ScriptFunction UpdateCompositeTexture() { mixin(MGF!("mUpdateCompositeTexture", "Function Engine.Texture2DComposite.UpdateCompositeTexture")()); }
			ScriptFunction ResetSourceRegions() { mixin(MGF!("mResetSourceRegions", "Function Engine.Texture2DComposite.ResetSourceRegions")()); }
		}
	}
	struct SourceTexture2DRegion
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Texture2DComposite.SourceTexture2DRegion")()); }
		@property final auto ref
		{
			// WARNING: Property 'Texture2D' has the same name as a defined type!
			int SizeY() { mixin(MGPS!("int", 12)()); }
			int SizeX() { mixin(MGPS!("int", 8)()); }
			int OffsetY() { mixin(MGPS!("int", 4)()); }
			int OffsetX() { mixin(MGPS!("int", 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Texture2DComposite.SourceTexture2DRegion) SourceRegions() { mixin(MGPC!("ScriptArray!(Texture2DComposite.SourceTexture2DRegion)", 236)()); }
		int MaxTextureSize() { mixin(MGPC!("int", 248)()); }
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
