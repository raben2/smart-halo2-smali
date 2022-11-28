.class public final Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;
.super Ljava/lang/Object;
.source "ProfileActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/profile/ProfileActivity;",
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

.field private final jobServiceCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final userCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
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
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->userCloudManagerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->jobServiceCreatorProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/profile/ProfileActivity;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalyticsManager(Lbike/smarthalo/app/profile/ProfileActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lbike/smarthalo/app/profile/ProfileActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static injectJobServiceCreator(Lbike/smarthalo/app/profile/ProfileActivity;Lbike/smarthalo/app/services/JobServiceCreator;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lbike/smarthalo/app/profile/ProfileActivity;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    return-void
.end method

.method public static injectUserCloudManager(Lbike/smarthalo/app/profile/ProfileActivity;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lbike/smarthalo/app/profile/ProfileActivity;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    return-void
.end method

.method public static injectUserStorageManager(Lbike/smarthalo/app/profile/ProfileActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lbike/smarthalo/app/profile/ProfileActivity;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/profile/ProfileActivity;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->userCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/profile/ProfileActivity;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/profile/ProfileActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    .line 47
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->jobServiceCreatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/services/JobServiceCreator;

    invoke-static {p1, v0}, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->injectJobServiceCreator(Lbike/smarthalo/app/profile/ProfileActivity;Lbike/smarthalo/app/services/JobServiceCreator;)V

    .line 48
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/profile/ProfileActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lbike/smarthalo/app/profile/ProfileActivity;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/profile/ProfileActivity_MembersInjector;->injectMembers(Lbike/smarthalo/app/profile/ProfileActivity;)V

    return-void
.end method
