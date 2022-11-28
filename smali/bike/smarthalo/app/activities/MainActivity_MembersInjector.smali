.class public final Lbike/smarthalo/app/activities/MainActivity_MembersInjector;
.super Ljava/lang/Object;
.source "MainActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/activities/MainActivity;",
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

.field private final okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private final powerSavingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;",
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
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->userCloudManagerProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->powerSavingManagerProvider:Ljavax/inject/Provider;

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
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/activities/MainActivity;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalyticsManager(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static injectOkHttpClient(Lbike/smarthalo/app/activities/MainActivity;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static injectPowerSavingManager(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->powerSavingManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    return-void
.end method

.method public static injectUserCloudManager(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/activities/MainActivity;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->userCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->injectUserCloudManager(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;)V

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->okHttpClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->injectOkHttpClient(Lbike/smarthalo/app/activities/MainActivity;Lokhttp3/OkHttpClient;)V

    .line 47
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 48
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->powerSavingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->injectPowerSavingManager(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lbike/smarthalo/app/activities/MainActivity;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/MainActivity_MembersInjector;->injectMembers(Lbike/smarthalo/app/activities/MainActivity;)V

    return-void
.end method
