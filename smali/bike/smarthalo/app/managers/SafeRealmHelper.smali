.class public Lbike/smarthalo/app/managers/SafeRealmHelper;
.super Ljava/lang/Object;
.source "SafeRealmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V
    .locals 2

    .line 11
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 13
    :try_start_0
    invoke-interface {p0, v0}, Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;->onRealmReady(Lio/realm/Realm;)V

    .line 14
    invoke-virtual {v0}, Lio/realm/Realm;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {v0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v0}, Lio/realm/Realm;->cancelTransaction()V

    .line 19
    :cond_0
    invoke-virtual {v0}, Lio/realm/Realm;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
