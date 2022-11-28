.class public Lbike/smarthalo/app/models/SHPastRide;
.super Lio/realm/RealmObject;
.source "SHPastRide.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;
.implements Lio/realm/bike_smarthalo_app_models_SHPastRideRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/RealmObject;",
        "Ljava/lang/Comparable<",
        "Lbike/smarthalo/app/models/SHPastRide;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public averageSpeed:F

.field public calories:F

.field public co2:F

.field public createdAt:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public distance:F

.field public duration:I

.field public elevation:F

.field public end:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "integration"
    .end annotation
.end field

.field public hasDeleteRequest:Z

.field public hasStravaUploadRequest:Z

.field public hasUpdateRequest:Z

.field public id:I

.field public stamp:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public start:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public updatedAt:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public user_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Lbike/smarthalo/app/models/SHPastRide$1;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHPastRide$1;-><init>()V

    sput-object v0, Lbike/smarthalo/app/models/SHPastRide;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$stamp(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$start(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$end(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$createdAt(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$updatedAt(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$id(I)V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$duration(I)V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$user_id(I)V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$hasDeleteRequest(Z)V

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$distance(F)V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$averageSpeed(F)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$elevation(F)V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$calories(F)V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$co2(F)V

    .line 134
    const-class v0, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    return-void
.end method


# virtual methods
.method public addStravaIntegration(Ljava/lang/String;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-direct {v0}, Lbike/smarthalo/app/models/FitnessIntegrations;-><init>()V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/FitnessIntegrations;->realmSet$stravaId(Ljava/lang/String;)V

    return-void
.end method

.method public asRide()Lbike/smarthalo/app/models/SHRide;
    .locals 5

    .line 48
    new-instance v0, Lbike/smarthalo/app/models/SHRide;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHRide;-><init>()V

    .line 50
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$timestamp(Ljava/lang/Long;)V

    .line 51
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$averageSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/models/SHRide;->realmSet$avgSpeed(D)V

    .line 52
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/models/SHRide;->realmSet$traveledDistance(D)V

    .line 53
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$calories()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/models/SHRide;->realmSet$burntCalories(D)V

    .line 54
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$elevation()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/models/SHRide;->realmSet$climbedElevation(D)V

    .line 55
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$co2()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/models/SHRide;->realmSet$co2(D)V

    .line 56
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$duration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/models/SHRide;->realmSet$endTime(J)V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$isActive(Z)V

    return-object v0
.end method

.method public compareTo(Lbike/smarthalo/app/models/SHPastRide;)I
    .locals 4
    .param p1    # Lbike/smarthalo/app/models/SHPastRide;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 77
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    check-cast p1, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/SHPastRide;->compareTo(Lbike/smarthalo/app/models/SHPastRide;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasStravaIntegration()Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/FitnessIntegrations;->realmGet$stravaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public realmGet$averageSpeed()F
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHPastRide;->averageSpeed:F

    return v0
.end method

.method public realmGet$calories()F
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHPastRide;->calories:F

    return v0
.end method

.method public realmGet$co2()F
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHPastRide;->co2:F

    return v0
.end method

.method public realmGet$createdAt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHPastRide;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$distance()F
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHPastRide;->distance:F

    return v0
.end method

.method public realmGet$duration()I
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHPastRide;->duration:I

    return v0
.end method

.method public realmGet$elevation()F
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHPastRide;->elevation:F

    return v0
.end method

.method public realmGet$end()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHPastRide;->end:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHPastRide;->fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

    return-object v0
.end method

.method public realmGet$hasDeleteRequest()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHPastRide;->hasDeleteRequest:Z

    return v0
.end method

.method public realmGet$hasStravaUploadRequest()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHPastRide;->hasStravaUploadRequest:Z

    return v0
.end method

.method public realmGet$hasUpdateRequest()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/SHPastRide;->hasUpdateRequest:Z

    return v0
.end method

.method public realmGet$id()I
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHPastRide;->id:I

    return v0
.end method

.method public realmGet$stamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHPastRide;->stamp:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$start()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHPastRide;->start:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHPastRide;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$user_id()I
    .locals 1

    iget v0, p0, Lbike/smarthalo/app/models/SHPastRide;->user_id:I

    return v0
.end method

.method public realmSet$averageSpeed(F)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHPastRide;->averageSpeed:F

    return-void
.end method

.method public realmSet$calories(F)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHPastRide;->calories:F

    return-void
.end method

.method public realmSet$co2(F)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHPastRide;->co2:F

    return-void
.end method

.method public realmSet$createdAt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHPastRide;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public realmSet$distance(F)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHPastRide;->distance:F

    return-void
.end method

.method public realmSet$duration(I)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHPastRide;->duration:I

    return-void
.end method

.method public realmSet$elevation(F)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHPastRide;->elevation:F

    return-void
.end method

.method public realmSet$end(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHPastRide;->end:Ljava/lang/String;

    return-void
.end method

.method public realmSet$fitnessIntegrations(Lbike/smarthalo/app/models/FitnessIntegrations;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHPastRide;->fitnessIntegrations:Lbike/smarthalo/app/models/FitnessIntegrations;

    return-void
.end method

.method public realmSet$hasDeleteRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHPastRide;->hasDeleteRequest:Z

    return-void
.end method

.method public realmSet$hasStravaUploadRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHPastRide;->hasStravaUploadRequest:Z

    return-void
.end method

.method public realmSet$hasUpdateRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/SHPastRide;->hasUpdateRequest:Z

    return-void
.end method

.method public realmSet$id(I)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHPastRide;->id:I

    return-void
.end method

.method public realmSet$stamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHPastRide;->stamp:Ljava/lang/String;

    return-void
.end method

.method public realmSet$start(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHPastRide;->start:Ljava/lang/String;

    return-void
.end method

.method public realmSet$updatedAt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHPastRide;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method public realmSet$user_id(I)V
    .locals 0

    iput p1, p0, Lbike/smarthalo/app/models/SHPastRide;->user_id:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$start()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$end()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$createdAt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$updatedAt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$id()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$duration()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$user_id()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$hasDeleteRequest()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 107
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$averageSpeed()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 108
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$elevation()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 109
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$calories()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 110
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$co2()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 111
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$fitnessIntegrations()Lbike/smarthalo/app/models/FitnessIntegrations;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
