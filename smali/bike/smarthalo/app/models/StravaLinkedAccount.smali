.class public Lbike/smarthalo/app/models/StravaLinkedAccount;
.super Lio/realm/RealmObject;
.source "StravaLinkedAccount.java"

# interfaces
.implements Lio/realm/bike_smarthalo_app_models_StravaLinkedAccountRealmProxyInterface;


# instance fields
.field public accountId:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation
.end field

.field public authenticationToken:Ljava/lang/String;

.field public authenticationTokenExpiration:Ljava/lang/Long;

.field public imageUrl:Ljava/lang/String;

.field public isAutoUploadOn:Z

.field public refreshToken:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$isAutoUploadOn(Z)V

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/api/strava/StravaAthlete;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$isAutoUploadOn(Z)V

    .line 28
    iget-object v0, p1, Lbike/smarthalo/app/api/strava/StravaAthlete;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$accountId(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$authenticationToken(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p3}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$refreshToken(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p4}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$authenticationTokenExpiration(Ljava/lang/Long;)V

    .line 32
    iget-object p2, p1, Lbike/smarthalo/app/api/strava/StravaAthlete;->profilePictureUrl:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$imageUrl(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/StravaLinkedAccount;->setUsername(Lbike/smarthalo/app/api/strava/StravaAthlete;)V

    return-void
.end method


# virtual methods
.method public realmGet$accountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$authenticationToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->authenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$authenticationTokenExpiration()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->authenticationTokenExpiration:Ljava/lang/Long;

    return-object v0
.end method

.method public realmGet$imageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$isAutoUploadOn()Z
    .locals 1

    iget-boolean v0, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->isAutoUploadOn:Z

    return v0
.end method

.method public realmGet$refreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$username()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->username:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$accountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->accountId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$authenticationToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->authenticationToken:Ljava/lang/String;

    return-void
.end method

.method public realmSet$authenticationTokenExpiration(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->authenticationTokenExpiration:Ljava/lang/Long;

    return-void
.end method

.method public realmSet$imageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$isAutoUploadOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->isAutoUploadOn:Z

    return-void
.end method

.method public realmSet$refreshToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public realmSet$username(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/StravaLinkedAccount;->username:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Lbike/smarthalo/app/api/strava/StravaAthlete;)V
    .locals 2

    .line 37
    iget-object v0, p1, Lbike/smarthalo/app/api/strava/StravaAthlete;->firstName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbike/smarthalo/app/api/strava/StravaAthlete;->lastName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lbike/smarthalo/app/api/strava/StravaAthlete;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lbike/smarthalo/app/api/strava/StravaAthlete;->lastName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$username(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p1, Lbike/smarthalo/app/api/strava/StravaAthlete;->userName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmSet$username(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
