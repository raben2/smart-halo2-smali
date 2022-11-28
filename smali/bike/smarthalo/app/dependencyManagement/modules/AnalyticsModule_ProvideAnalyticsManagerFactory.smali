.class public final Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule_ProvideAnalyticsManagerFactory;
.super Ljava/lang/Object;
.source "AnalyticsModule_ProvideAnalyticsManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule_ProvideAnalyticsManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;

    .line 19
    iput-object p2, p0, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule_ProvideAnalyticsManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule_ProvideAnalyticsManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule_ProvideAnalyticsManagerFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule_ProvideAnalyticsManagerFactory;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule_ProvideAnalyticsManagerFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideAnalyticsManager(Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;Landroid/content/Context;)Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;->provideAnalyticsManager(Landroid/content/Context;)Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object p0
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 2

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule_ProvideAnalyticsManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule_ProvideAnalyticsManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;->provideAnalyticsManager(Landroid/content/Context;)Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule_ProvideAnalyticsManagerFactory;->get()Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-result-object v0

    return-object v0
.end method
