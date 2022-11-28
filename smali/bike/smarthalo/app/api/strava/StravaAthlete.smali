.class public Lbike/smarthalo/app/api/strava/StravaAthlete;
.super Ljava/lang/Object;
.source "StravaAthlete.java"


# instance fields
.field public city:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstname"
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public isPremium:Z

.field public lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastname"
    .end annotation
.end field

.field public profilePictureUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_medium"
    .end annotation
.end field

.field public resourceState:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resource_state"
    .end annotation
.end field

.field public sex:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
