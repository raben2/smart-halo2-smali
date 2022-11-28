.class public Lbike/smarthalo/app/models/SHAppData;
.super Lio/realm/RealmObject;
.source "SHAppData.java"

# interfaces
.implements Lio/realm/bike_smarthalo_app_models_SHAppDataRealmProxyInterface;


# instance fields
.field public key:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public realmGet$key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHAppData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/models/SHAppData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$key(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHAppData;->key:Ljava/lang/String;

    return-void
.end method

.method public realmSet$value(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/models/SHAppData;->value:Ljava/lang/String;

    return-void
.end method
