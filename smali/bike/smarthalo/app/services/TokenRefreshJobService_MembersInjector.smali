.class public final Lbike/smarthalo/app/services/TokenRefreshJobService_MembersInjector;
.super Ljava/lang/Object;
.source "TokenRefreshJobService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/services/TokenRefreshJobService;",
        ">;"
    }
.end annotation


# instance fields
.field private final authenticationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lbike/smarthalo/app/services/TokenRefreshJobService_MembersInjector;->authenticationManagerProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lbike/smarthalo/app/services/TokenRefreshJobService_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/services/TokenRefreshJobService;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lbike/smarthalo/app/services/TokenRefreshJobService_MembersInjector;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/services/TokenRefreshJobService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAuthenticationManager(Lbike/smarthalo/app/services/TokenRefreshJobService;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lbike/smarthalo/app/services/TokenRefreshJobService;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    return-void
.end method

.method public static injectUserStorageManager(Lbike/smarthalo/app/services/TokenRefreshJobService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lbike/smarthalo/app/services/TokenRefreshJobService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/services/TokenRefreshJobService;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lbike/smarthalo/app/services/TokenRefreshJobService_MembersInjector;->authenticationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/TokenRefreshJobService_MembersInjector;->injectAuthenticationManager(Lbike/smarthalo/app/services/TokenRefreshJobService;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    .line 32
    iget-object v0, p0, Lbike/smarthalo/app/services/TokenRefreshJobService_MembersInjector;->userStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/TokenRefreshJobService_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/services/TokenRefreshJobService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lbike/smarthalo/app/services/TokenRefreshJobService;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/services/TokenRefreshJobService_MembersInjector;->injectMembers(Lbike/smarthalo/app/services/TokenRefreshJobService;)V

    return-void
.end method
