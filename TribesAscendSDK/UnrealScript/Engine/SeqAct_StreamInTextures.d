module UnrealScript.Engine.SeqAct_StreamInTextures;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Texture;

extern(C++) interface SeqAct_StreamInTextures : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_StreamInTextures")()); }
	private static __gshared SeqAct_StreamInTextures mDefaultProperties;
	@property final static SeqAct_StreamInTextures DefaultProperties() { mixin(MGDPC!(SeqAct_StreamInTextures, "SeqAct_StreamInTextures Engine.Default__SeqAct_StreamInTextures")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_StreamInTextures.GetObjClassVersion")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject) LocationActors() { mixin(MGPC!("ScriptArray!(UObject)", 260)()); }
			ScriptArray!(MaterialInterface) ForceMaterials() { mixin(MGPC!("ScriptArray!(MaterialInterface)", 272)()); }
			int SelectedCinematicTextureGroups() { mixin(MGPC!("int", 288)()); }
			Texture.TextureGroupContainer CinematicTextureGroups() { mixin(MGPC!("Texture.TextureGroupContainer", 284)()); }
			float StopTimestamp() { mixin(MGPC!("float", 256)()); }
			float Seconds() { mixin(MGPC!("float", 252)()); }
		}
		bool bStreamingActive() { mixin(MGBPC!(248, 0x2)()); }
		bool bStreamingActive(bool val) { mixin(MSBPC!(248, 0x2)()); }
		bool bLocationBased() { mixin(MGBPC!(248, 0x1)()); }
		bool bLocationBased(bool val) { mixin(MSBPC!(248, 0x1)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
