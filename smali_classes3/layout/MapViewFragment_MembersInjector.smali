.class public final Llayout/MapViewFragment_MembersInjector;
.super Ljava/lang/Object;
.source "MapViewFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Llayout/MapViewFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;"
        }
    .end annotation
.end field

.field private final appStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private final geocodingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;",
            ">;"
        }
    .end annotation
.end field

.field private final userStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Llayout/MapViewFragment_MembersInjector;->geocodingManagerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Llayout/MapViewFragment_MembersInjector;->appStorageManagerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Llayout/MapViewFragment_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Llayout/MapViewFragment_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Llayout/MapViewFragment;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Llayout/MapViewFragment_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Llayout/MapViewFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalyticsManager(Llayout/MapViewFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 68
    iput-object p1, p0, Llayout/MapViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static injectAppStorageManager(Llayout/MapViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V
    .locals 0

    .line 58
    iput-object p1, p0, Llayout/MapViewFragment;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    return-void
.end method

.method public static injectGeocodingManager(Llayout/MapViewFragment;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;)V
    .locals 0

    .line 53
    iput-object p1, p0, Llayout/MapViewFragment;->geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    return-void
.end method

.method public static injectUserStorageManager(Llayout/MapViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V
    .locals 0

    .line 63
    iput-object p1, p0, Llayout/MapViewFragment;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Llayout/MapViewFragment;

    invoke-virtual {p0, p1}, Llayout/MapViewFragment_MembersInjector;->injectMembers(Llayout/MapViewFragment;)V

    return-void
.end method

.method public injectMembers(Llayout/MapViewFragment;)V
    .locals 1

    .line 45
    iget-object v0, p0, Llayout/MapViewFragment_MembersInjector;->geocodingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    invoke-static {p1, v0}, Llayout/MapViewFragment_MembersInjector;->injectGeocodingManager(Llayout/MapViewFragment;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;)V

    .line 46
    iget-object v0, p0, Llayout/MapViewFragment_MembersInjector;->appStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    invoke-static {p1, v0}, Llayout/MapViewFragment_MembersInjector;->injectAppStorageManager(Llayout/MapViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    .line 47
    iget-object v0, p0, Llayout/MapViewFragment_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-static {p1, v0}, Llayout/MapViewFragment_MembersInjector;->injectUserStorageManager(Llayout/MapViewFragment;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 48
    iget-object v0, p0, Llayout/MapViewFragment_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Llayout/MapViewFragment_MembersInjector;->injectAnalyticsManager(Llayout/MapViewFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-void
.end method
