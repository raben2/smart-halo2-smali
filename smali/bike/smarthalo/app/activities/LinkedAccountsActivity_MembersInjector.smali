.class public final Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;
.super Ljava/lang/Object;
.source "LinkedAccountsActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/activities/LinkedAccountsActivity;",
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

.field private final keyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final stravaCloudManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
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
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->stravaCloudManagerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->keyManagerProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p3, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/activities/LinkedAccountsActivity;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalyticsManager(Lbike/smarthalo/app/activities/LinkedAccountsActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static injectKeyManager(Lbike/smarthalo/app/activities/LinkedAccountsActivity;Lbike/smarthalo/app/managers/KeyManager;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    return-void
.end method

.method public static injectStravaCloudManager(Lbike/smarthalo/app/activities/LinkedAccountsActivity;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity;->stravaCloudManager:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/activities/LinkedAccountsActivity;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->stravaCloudManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->injectStravaCloudManager(Lbike/smarthalo/app/activities/LinkedAccountsActivity;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;)V

    .line 38
    iget-object v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->keyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/activities/LinkedAccountsActivity;Lbike/smarthalo/app/managers/KeyManager;)V

    .line 39
    iget-object v0, p0, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/LinkedAccountsActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lbike/smarthalo/app/activities/LinkedAccountsActivity;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/LinkedAccountsActivity_MembersInjector;->injectMembers(Lbike/smarthalo/app/activities/LinkedAccountsActivity;)V

    return-void
.end method
