module UnrealScript.UTGame.UTFamilyInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstance;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.UDKBase.UDKPawn;
import UnrealScript.Engine.StaticMesh;
import UnrealScript.Engine.MaterialInstanceTimeVarying;
import UnrealScript.Engine.Texture;

extern(C++) interface UTFamilyInfo : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTFamilyInfo")()); }
	private static __gshared UTFamilyInfo mDefaultProperties;
	@property final static UTFamilyInfo DefaultProperties() { mixin(MGDPC!(UTFamilyInfo, "UTFamilyInfo UTGame.Default__UTFamilyInfo")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetFirstPersonArmsMaterial;
			ScriptFunction mGetFirstPersonArms;
			ScriptFunction mGetVoiceClass;
			ScriptFunction mGetCharPortrait;
			ScriptFunction mGetEmoteIndex;
			ScriptFunction mGetTeamMaterials;
			ScriptFunction mGetEmoteGroupCnt;
			ScriptFunction mGetEmotes;
		}
		public @property static final
		{
			ScriptFunction GetFirstPersonArmsMaterial() { mixin(MGF!("mGetFirstPersonArmsMaterial", "Function UTGame.UTFamilyInfo.GetFirstPersonArmsMaterial")()); }
			ScriptFunction GetFirstPersonArms() { mixin(MGF!("mGetFirstPersonArms", "Function UTGame.UTFamilyInfo.GetFirstPersonArms")()); }
			ScriptFunction GetVoiceClass() { mixin(MGF!("mGetVoiceClass", "Function UTGame.UTFamilyInfo.GetVoiceClass")()); }
			ScriptFunction GetCharPortrait() { mixin(MGF!("mGetCharPortrait", "Function UTGame.UTFamilyInfo.GetCharPortrait")()); }
			ScriptFunction GetEmoteIndex() { mixin(MGF!("mGetEmoteIndex", "Function UTGame.UTFamilyInfo.GetEmoteIndex")()); }
			ScriptFunction GetTeamMaterials() { mixin(MGF!("mGetTeamMaterials", "Function UTGame.UTFamilyInfo.GetTeamMaterials")()); }
			ScriptFunction GetEmoteGroupCnt() { mixin(MGF!("mGetEmoteGroupCnt", "Function UTGame.UTFamilyInfo.GetEmoteGroupCnt")()); }
			ScriptFunction GetEmotes() { mixin(MGF!("mGetEmotes", "Function UTGame.UTFamilyInfo.GetEmotes")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString Faction() { mixin(MGPC!("ScriptString", 88)()); }
			ScriptArray!(AnimSet) AnimSets() { mixin(MGPC!("ScriptArray!(AnimSet)", 192)()); }
			SkeletalMesh CharacterMesh() { mixin(MGPC!("SkeletalMesh", 100)()); }
			PhysicsAsset PhysAsset() { mixin(MGPC!("PhysicsAsset", 188)()); }
			ScriptName LeftFootBone() { mixin(MGPC!("ScriptName", 204)()); }
			ScriptName RightFootBone() { mixin(MGPC!("ScriptName", 212)()); }
			ScriptArray!(ScriptName) TakeHitPhysicsFixedBones() { mixin(MGPC!("ScriptArray!(ScriptName)", 220)()); }
			ScriptClass SoundGroupClass() { mixin(MGPC!("ScriptClass", 232)()); }
			float DefaultMeshScale() { mixin(MGPC!("float", 404)()); }
			float BaseTranslationOffset() { mixin(MGPC!("float", 408)()); }
			MaterialInstance BloodSplatterDecalMaterial() { mixin(MGPC!("MaterialInstance", 248)()); }
			ScriptArray!(UDKPawn.EmoteInfo) FamilyEmotes() { mixin(MGPC!("ScriptArray!(UDKPawn.EmoteInfo)", 284)()); }
			float DrivingDrawScale() { mixin(MGPC!("float", 396)()); }
			UTPawn.GibInfo HeadGib() { mixin(MGPC!("UTPawn.GibInfo", 308)()); }
			ParticleSystem HeadShotEffect() { mixin(MGPC!("ParticleSystem", 360)()); }
			ParticleSystem GibExplosionTemplate() { mixin(MGPC!("ParticleSystem", 392)()); }
			ScriptArray!(UTPawn.GibInfo) Gibs() { mixin(MGPC!("ScriptArray!(UTPawn.GibInfo)", 296)()); }
			ScriptName HeadShotGoreSocketName() { mixin(MGPC!("ScriptName", 364)()); }
			StaticMesh HeadShotNeckGoreAttachment() { mixin(MGPC!("StaticMesh", 372)()); }
			ScriptArray!(UDKPawn.DistanceBasedParticleTemplate) BloodEffects() { mixin(MGPC!("ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)", 380)()); }
			ScriptClass BloodEmitterClass() { mixin(MGPC!("ScriptClass", 376)()); }
			ScriptString FamilyID() { mixin(MGPC!("ScriptString", 76)()); }
			SkeletalMesh DeathMeshSkelMesh() { mixin(MGPC!("SkeletalMesh", 324)()); }
			PhysicsAsset DeathMeshPhysAsset() { mixin(MGPC!("PhysicsAsset", 328)()); }
			ScriptArray!(MaterialInstanceTimeVarying) SkeletonBurnOutMaterials() { mixin(MGPC!("ScriptArray!(MaterialInstanceTimeVarying)", 348)()); }
			int DeathMeshNumMaterialsToSetResident() { mixin(MGPC!("int", 332)()); }
			ScriptArray!(ScriptName) DeathMeshBreakableJoints() { mixin(MGPC!("ScriptArray!(ScriptName)", 336)()); }
			ScriptArray!(Texture) DefaultTeamHeadPortrait() { mixin(MGPC!("ScriptArray!(Texture)", 64)()); }
			ScriptArray!(MaterialInterface) CharacterTeamBodyMaterials() { mixin(MGPC!("ScriptArray!(MaterialInterface)", 104)()); }
			ScriptArray!(MaterialInterface) CharacterTeamHeadMaterials() { mixin(MGPC!("ScriptArray!(MaterialInterface)", 116)()); }
			UObject.LinearColor NonTeamTintColor() { mixin(MGPC!("UObject.LinearColor", 268)()); }
			UObject.LinearColor NonTeamEmissiveColor() { mixin(MGPC!("UObject.LinearColor", 252)()); }
			MaterialInstanceConstant BioDeathMICParent() { mixin(MGPC!("MaterialInstanceConstant", 244)()); }
			MaterialInstanceConstant BaseMICParent() { mixin(MGPC!("MaterialInstanceConstant", 240)()); }
			ScriptClass VoiceClass() { mixin(MGPC!("ScriptClass", 236)()); }
			Vector PortraitExtraOffset() { mixin(MGPC!("Vector", 176)()); }
			ScriptString NeckStumpName() { mixin(MGPC!("ScriptString", 164)()); }
			MaterialInterface BlueArmMaterial() { mixin(MGPC!("MaterialInterface", 160)()); }
			MaterialInterface RedArmMaterial() { mixin(MGPC!("MaterialInterface", 156)()); }
			ScriptString ArmSkinPackageName() { mixin(MGPC!("ScriptString", 144)()); }
			SkeletalMesh ArmMesh() { mixin(MGPC!("SkeletalMesh", 140)()); }
			ScriptString ArmMeshPackageName() { mixin(MGPC!("ScriptString", 128)()); }
			Texture DefaultHeadPortrait() { mixin(MGPC!("Texture", 60)()); }
		}
		bool bIsFemale() { mixin(MGBPC!(400, 0x1)()); }
		bool bIsFemale(bool val) { mixin(MSBPC!(400, 0x1)()); }
	}
final:
	static MaterialInterface GetFirstPersonArmsMaterial(int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		StaticClass.ProcessEvent(Functions.GetFirstPersonArmsMaterial, params.ptr, cast(void*)0);
		return *cast(MaterialInterface*)&params[4];
	}
	static SkeletalMesh GetFirstPersonArms()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetFirstPersonArms, params.ptr, cast(void*)0);
		return *cast(SkeletalMesh*)params.ptr;
	}
	static ScriptClass GetVoiceClass()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetVoiceClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	static Texture GetCharPortrait(int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		StaticClass.ProcessEvent(Functions.GetCharPortrait, params.ptr, cast(void*)0);
		return *cast(Texture*)&params[4];
	}
	static int GetEmoteIndex(ScriptName EmoteTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EmoteTag;
		StaticClass.ProcessEvent(Functions.GetEmoteIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static void GetTeamMaterials(int TeamNum, ref MaterialInterface TeamMaterialHead, ref MaterialInterface TeamMaterialBody)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		*cast(MaterialInterface*)&params[4] = TeamMaterialHead;
		*cast(MaterialInterface*)&params[8] = TeamMaterialBody;
		StaticClass.ProcessEvent(Functions.GetTeamMaterials, params.ptr, cast(void*)0);
		TeamMaterialHead = *cast(MaterialInterface*)&params[4];
		TeamMaterialBody = *cast(MaterialInterface*)&params[8];
	}
	static int GetEmoteGroupCnt(ScriptName Category)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Category;
		StaticClass.ProcessEvent(Functions.GetEmoteGroupCnt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static void GetEmotes(ScriptName Category, ref ScriptArray!(ScriptString) Captions, ref ScriptArray!(ScriptName) EmoteTags)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Category;
		*cast(ScriptArray!(ScriptString)*)&params[8] = Captions;
		*cast(ScriptArray!(ScriptName)*)&params[20] = EmoteTags;
		StaticClass.ProcessEvent(Functions.GetEmotes, params.ptr, cast(void*)0);
		Captions = *cast(ScriptArray!(ScriptString)*)&params[8];
		EmoteTags = *cast(ScriptArray!(ScriptName)*)&params[20];
	}
}
