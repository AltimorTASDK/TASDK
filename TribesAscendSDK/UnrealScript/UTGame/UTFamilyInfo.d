module UnrealScript.UTGame.UTFamilyInfo;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTFamilyInfo")); }
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
			ScriptFunction GetFirstPersonArmsMaterial() { return mGetFirstPersonArmsMaterial ? mGetFirstPersonArmsMaterial : (mGetFirstPersonArmsMaterial = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTFamilyInfo.GetFirstPersonArmsMaterial")); }
			ScriptFunction GetFirstPersonArms() { return mGetFirstPersonArms ? mGetFirstPersonArms : (mGetFirstPersonArms = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTFamilyInfo.GetFirstPersonArms")); }
			ScriptFunction GetVoiceClass() { return mGetVoiceClass ? mGetVoiceClass : (mGetVoiceClass = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTFamilyInfo.GetVoiceClass")); }
			ScriptFunction GetCharPortrait() { return mGetCharPortrait ? mGetCharPortrait : (mGetCharPortrait = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTFamilyInfo.GetCharPortrait")); }
			ScriptFunction GetEmoteIndex() { return mGetEmoteIndex ? mGetEmoteIndex : (mGetEmoteIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTFamilyInfo.GetEmoteIndex")); }
			ScriptFunction GetTeamMaterials() { return mGetTeamMaterials ? mGetTeamMaterials : (mGetTeamMaterials = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTFamilyInfo.GetTeamMaterials")); }
			ScriptFunction GetEmoteGroupCnt() { return mGetEmoteGroupCnt ? mGetEmoteGroupCnt : (mGetEmoteGroupCnt = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTFamilyInfo.GetEmoteGroupCnt")); }
			ScriptFunction GetEmotes() { return mGetEmotes ? mGetEmotes : (mGetEmotes = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTFamilyInfo.GetEmotes")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString Faction() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 88); }
			ScriptArray!(AnimSet) AnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 192); }
			SkeletalMesh CharacterMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 100); }
			PhysicsAsset PhysAsset() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 188); }
			ScriptName LeftFootBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 204); }
			ScriptName RightFootBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 212); }
			ScriptArray!(ScriptName) TakeHitPhysicsFixedBones() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 220); }
			ScriptClass SoundGroupClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 232); }
			float DefaultMeshScale() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
			float BaseTranslationOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 408); }
			MaterialInstance BloodSplatterDecalMaterial() { return *cast(MaterialInstance*)(cast(size_t)cast(void*)this + 248); }
			ScriptArray!(UDKPawn.EmoteInfo) FamilyEmotes() { return *cast(ScriptArray!(UDKPawn.EmoteInfo)*)(cast(size_t)cast(void*)this + 284); }
			float DrivingDrawScale() { return *cast(float*)(cast(size_t)cast(void*)this + 396); }
			UTPawn.GibInfo HeadGib() { return *cast(UTPawn.GibInfo*)(cast(size_t)cast(void*)this + 308); }
			ParticleSystem HeadShotEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 360); }
			ParticleSystem GibExplosionTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 392); }
			ScriptArray!(UTPawn.GibInfo) Gibs() { return *cast(ScriptArray!(UTPawn.GibInfo)*)(cast(size_t)cast(void*)this + 296); }
			ScriptName HeadShotGoreSocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 364); }
			StaticMesh HeadShotNeckGoreAttachment() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 372); }
			ScriptArray!(UDKPawn.DistanceBasedParticleTemplate) BloodEffects() { return *cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)*)(cast(size_t)cast(void*)this + 380); }
			ScriptClass BloodEmitterClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 376); }
			ScriptString FamilyID() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 76); }
			SkeletalMesh DeathMeshSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 324); }
			PhysicsAsset DeathMeshPhysAsset() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 328); }
			ScriptArray!(MaterialInstanceTimeVarying) SkeletonBurnOutMaterials() { return *cast(ScriptArray!(MaterialInstanceTimeVarying)*)(cast(size_t)cast(void*)this + 348); }
			int DeathMeshNumMaterialsToSetResident() { return *cast(int*)(cast(size_t)cast(void*)this + 332); }
			ScriptArray!(ScriptName) DeathMeshBreakableJoints() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 336); }
			ScriptArray!(Texture) DefaultTeamHeadPortrait() { return *cast(ScriptArray!(Texture)*)(cast(size_t)cast(void*)this + 64); }
			ScriptArray!(MaterialInterface) CharacterTeamBodyMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 104); }
			ScriptArray!(MaterialInterface) CharacterTeamHeadMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 116); }
			UObject.LinearColor NonTeamTintColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 268); }
			UObject.LinearColor NonTeamEmissiveColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 252); }
			MaterialInstanceConstant BioDeathMICParent() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 244); }
			MaterialInstanceConstant BaseMICParent() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 240); }
			ScriptClass VoiceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 236); }
			Vector PortraitExtraOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 176); }
			ScriptString NeckStumpName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
			MaterialInterface BlueArmMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 160); }
			MaterialInterface RedArmMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 156); }
			ScriptString ArmSkinPackageName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
			SkeletalMesh ArmMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 140); }
			ScriptString ArmMeshPackageName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 128); }
			Texture DefaultHeadPortrait() { return *cast(Texture*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bIsFemale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 400) & 0x1) != 0; }
		bool bIsFemale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 400) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 400) &= ~0x1; } return val; }
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
	static void GetTeamMaterials(int TeamNum, MaterialInterface* TeamMaterialHead, MaterialInterface* TeamMaterialBody)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		*cast(MaterialInterface*)&params[4] = *TeamMaterialHead;
		*cast(MaterialInterface*)&params[8] = *TeamMaterialBody;
		StaticClass.ProcessEvent(Functions.GetTeamMaterials, params.ptr, cast(void*)0);
		*TeamMaterialHead = *cast(MaterialInterface*)&params[4];
		*TeamMaterialBody = *cast(MaterialInterface*)&params[8];
	}
	static int GetEmoteGroupCnt(ScriptName Category)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Category;
		StaticClass.ProcessEvent(Functions.GetEmoteGroupCnt, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	static void GetEmotes(ScriptName Category, ScriptArray!(ScriptString)* Captions, ScriptArray!(ScriptName)* EmoteTags)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Category;
		*cast(ScriptArray!(ScriptString)*)&params[8] = *Captions;
		*cast(ScriptArray!(ScriptName)*)&params[20] = *EmoteTags;
		StaticClass.ProcessEvent(Functions.GetEmotes, params.ptr, cast(void*)0);
		*Captions = *cast(ScriptArray!(ScriptString)*)&params[8];
		*EmoteTags = *cast(ScriptArray!(ScriptName)*)&params[20];
	}
}
