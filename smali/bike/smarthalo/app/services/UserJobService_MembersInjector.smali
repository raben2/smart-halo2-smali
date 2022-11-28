.class public final Lbike/smarthalo/app/services/UserJobService_MembersInjector;
.super Ljava/lang/Object;
.source "UserJobService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/services/UserJobService;",
        ">;"
    }
.end annotation


# instance fields
.field private final userCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lbike/smarthalo/app/services/UserJobService_MembersInjector;->userCloudManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/services/UserJobService;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Lbike/smarthalo/app/services/UserJobService_MembersInjector;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/services/UserJobService_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectUserCloudManager(Lbike/smarthalo/app/services/UserJobService;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lbike/smarthalo/app/services/UserJobService;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/services/UserJobService;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lbike/smarthalo/app/services/UserJobService_MembersInjector;->userCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/services/UserJobService_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/services/UserJobService;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lbike/smarthalo/app/services/UserJobService;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/services/UserJobService_MembersInjector;->injectMembers(Lbike/smarthalo/app/services/UserJobService;)V

    return-void
.end method
