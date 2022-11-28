.class public Lbike/smarthalo/app/api/strava/StravaTokenErrorResponse;
.super Ljava/lang/Object;
.source "StravaTokenErrorResponse.java"


# static fields
.field public static final CODE_FIELD:Ljava/lang/String; = "code"

.field public static final INVALID_VALUE:Ljava/lang/String; = "invalid"

.field public static final REFRESH_TOKEN_RESOURCE:Ljava/lang/String; = "RefreshToken"


# instance fields
.field errors:[Lbike/smarthalo/app/api/strava/StravaTokenError;

.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUnauthorizedTokenError()Z
    .locals 7

    .line 16
    iget-object v0, p0, Lbike/smarthalo/app/api/strava/StravaTokenErrorResponse;->errors:[Lbike/smarthalo/app/api/strava/StravaTokenError;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string v5, "RefreshToken"

    .line 17
    iget-object v6, v4, Lbike/smarthalo/app/api/strava/StravaTokenError;->resource:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "code"

    iget-object v6, v4, Lbike/smarthalo/app/api/strava/StravaTokenError;->field:Ljava/lang/String;

    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "invalid"

    iget-object v4, v4, Lbike/smarthalo/app/api/strava/StravaTokenError;->code:Ljava/lang/String;

    .line 19
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
