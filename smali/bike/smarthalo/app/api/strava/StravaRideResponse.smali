.class public Lbike/smarthalo/app/api/strava/StravaRideResponse;
.super Ljava/lang/Object;
.source "StravaRideResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;
    }
.end annotation


# instance fields
.field public activityId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activity_id"
    .end annotation
.end field

.field public error:Ljava/lang/String;

.field public errorType:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

.field public externalId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_id"
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->None:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    iput-object v0, p0, Lbike/smarthalo/app/api/strava/StravaRideResponse;->errorType:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    .line 20
    iput-object p1, p0, Lbike/smarthalo/app/api/strava/StravaRideResponse;->errorType:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 2

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/api/strava/StravaRideResponse;->errorType:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    sget-object v1, Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;->None:Lbike/smarthalo/app/api/strava/StravaRideResponse$StravaErrorType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
