.class public Lbike/smarthalo/app/models/SHUser;
.super Lio/realm/RealmObject;
.source "SHUser.java"

# interfaces
.implements Lio/realm/bike_smarthalo_app_models_SHUserRealmProxyInterface;


# static fields
.field public static final GENDER_MAN:I = 0x0

.field public static final GENDER_NOT_DISCLOSED:I = 0x3

.field public static final GENDER_TRANS_OTHER:I = 0x2

.field public static final GENDER_WOMAN:I = 0x1


# instance fields
.field public authLevel:Ljava/lang/String;

.field public createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation

    .annotation runtime Lio/realm/annotations/Ignore;
    .end annotation
.end field

.field public dateOfBirth:Ljava/util/Date;

.field public deviceId:Ljava/lang/String;

.field public deviceModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceVersion"
    .end annotation
.end field

.field public devicePass:Ljava/lang/String;

.field public distanceMetric:Ljava/lang/Boolean;

.field public email:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public firstName:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public gender:Ljava/lang/Integer;

.field public height:Ljava/lang/Double;

.field public heightMetric:Ljava/lang/Boolean;

.field public id:Ljava/lang/Integer;

.field public isConfirmed:Ljava/lang/Boolean;

.field public key:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public language:Ljava/lang/String;

.field public lastName:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public password:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Ignore;
    .end annotation
.end field

.field public picture:Ljava/lang/String;

.field public weight:Ljava/lang/Double;

.field public weightMetric:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x3

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHUser;->realmSet$gender(Ljava/lang/Integer;)V

    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$heightMetric(Ljava/lang/Boolean;)V

    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHUser;->realmSet$weightMetric(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$distanceMetric(Ljava/lang/Boolean;)V

    const-string v1, ""

    .line 53
    invoke-virtual {p0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$deviceModel(Ljava/lang/String;)V

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHUser;->realmSet$isConfirmed(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public getAuthLevel()Lbike/smarthalo/app/models/AuthLevel;
    .locals 2

    .line 90
    const-class v0, Lbike/smarthalo/app/models/AuthLevel;

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$authLevel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/AuthLevel;

    return-object v0
.end method

.method public getDateOfBirthDisplay(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p1}, Lbike/smarthalo/app/helpers/DateHelper;->getDisplayBirthday(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;
    .locals 2

    .line 99
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceModel()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/DeviceModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceModel()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/DeviceModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object v0

    .line 104
    :cond_1
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceModel;->Unknown:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object v0
.end method

.method public getHeightInt()Ljava/lang/Integer;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$height()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$height()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getWeightInt()Ljava/lang/Integer;
    .locals 2

    .line 74
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$weight()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$weight()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceID()Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTester()Z
    .locals 2

    .line 94
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->getAuthLevel()Lbike/smarthalo/app/models/AuthLevel;

    move-result-object v0

    .line 95
    sget-object v1, Lbike/smarthalo/app/models/AuthLevel;->ALPHA:Lbike/smarthalo/app/models/AuthLevel;

    if-eq v0, v1, :cond_1

    sget-object v1, Lbike/smarthalo/app/models/AuthLevel;->BETA:Lbike/smarthalo/app/models/AuthLevel;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public realmGet$authLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->authLevel:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$dateOfBirth()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->dateOfBirth:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$deviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$deviceModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$devicePass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->devicePass:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$distanceMetric()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->distanceMetric:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$email()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->email:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$firstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$gender()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->gender:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$height()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->height:Ljava/lang/Double;

    return-object v0
.end method

.method public realmGet$heightMetric()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->heightMetric:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public realmGet$isConfirmed()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->isConfirmed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->key:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$language()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->language:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$lastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$picture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->picture:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$weight()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->weight:Ljava/lang/Double;

    return-object v0
.end method

.method public realmGet$weightMetric()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHUser;->weightMetric:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmSet$authLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->authLevel:Ljava/lang/String;

    return-void
.end method

.method public realmSet$dateOfBirth(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->dateOfBirth:Ljava/util/Date;

    return-void
.end method

.method public realmSet$deviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$deviceModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public realmSet$devicePass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->devicePass:Ljava/lang/String;

    return-void
.end method

.method public realmSet$distanceMetric(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->distanceMetric:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$email(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->email:Ljava/lang/String;

    return-void
.end method

.method public realmSet$firstName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->firstName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$gender(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->gender:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$height(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->height:Ljava/lang/Double;

    return-void
.end method

.method public realmSet$heightMetric(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->heightMetric:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$id(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->id:Ljava/lang/Integer;

    return-void
.end method

.method public realmSet$isConfirmed(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->isConfirmed:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$key(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->key:Ljava/lang/String;

    return-void
.end method

.method public realmSet$language(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->language:Ljava/lang/String;

    return-void
.end method

.method public realmSet$lastName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->lastName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$picture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->picture:Ljava/lang/String;

    return-void
.end method

.method public realmSet$weight(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->weight:Ljava/lang/Double;

    return-void
.end method

.method public realmSet$weightMetric(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHUser;->weightMetric:Ljava/lang/Boolean;

    return-void
.end method

.method public setDeviceModel(Lbike/smarthalo/sdk/models/DeviceModel;)V
    .locals 1

    .line 109
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne p1, v0, :cond_0

    .line 110
    sget-object p1, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/models/DeviceModel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHUser;->realmSet$deviceModel(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_0
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne p1, v0, :cond_1

    .line 112
    sget-object p1, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/models/DeviceModel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHUser;->realmSet$deviceModel(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 114
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHUser;->realmSet$deviceModel(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
