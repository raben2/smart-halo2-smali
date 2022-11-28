.class public final Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;
.super Ljava/lang/Object;
.source "DFUActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/activities/DFUActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticManagerProvider:Ljavax/inject/Provider;
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

.field private final firmwareCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->firmwareCloudManagerProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->appStorageManagerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->analyticManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/activities/DFUActivity;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalyticManager(Lbike/smarthalo/app/activities/DFUActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->analyticManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static injectAppStorageManager(Lbike/smarthalo/app/activities/DFUActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    return-void
.end method

.method public static injectFirmwareCloudManager(Lbike/smarthalo/app/activities/DFUActivity;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lbike/smarthalo/app/activities/DFUActivity;->firmwareCloudManager:Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/activities/DFUActivity;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->firmwareCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->injectFirmwareCloudManager(Lbike/smarthalo/app/activities/DFUActivity;Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;)V

    .line 37
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->appStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->injectAppStorageManager(Lbike/smarthalo/app/activities/DFUActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    .line 38
    iget-object v0, p0, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->analyticManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->injectAnalyticManager(Lbike/smarthalo/app/activities/DFUActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lbike/smarthalo/app/activities/DFUActivity;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/DFUActivity_MembersInjector;->injectMembers(Lbike/smarthalo/app/activities/DFUActivity;)V

    return-void
.end method
