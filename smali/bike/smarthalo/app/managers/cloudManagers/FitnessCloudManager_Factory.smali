.class public final Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;
.super Ljava/lang/Object;
.source "FitnessCloudManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;",
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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final keyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private final stravaCloudManagerContractProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;->retrofitProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;->stravaCloudManagerContractProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p4, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p5, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;->authenticationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;)",
            "Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;"
        }
    .end annotation

    .line 52
    new-instance v6, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;
    .locals 7

    .line 38
    new-instance v6, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;->retrofitProvider:Ljavax/inject/Provider;

    .line 40
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lretrofit2/Retrofit;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;->stravaCloudManagerContractProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lbike/smarthalo/app/managers/KeyManager;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;->authenticationManagerProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;-><init>(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager_Factory;->get()Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    move-result-object v0

    return-object v0
.end method
