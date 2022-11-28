.class public final Llayout/SearchFragment_MembersInjector;
.super Ljava/lang/Object;
.source "SearchFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Llayout/SearchFragment;",
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

.field private final geocodingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;",
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
            "Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Llayout/SearchFragment_MembersInjector;->geocodingManagerProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Llayout/SearchFragment_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Llayout/SearchFragment;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Llayout/SearchFragment_MembersInjector;

    invoke-direct {v0, p0, p1}, Llayout/SearchFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalyticsManager(Llayout/SearchFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 40
    iput-object p1, p0, Llayout/SearchFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static injectGeocodingManager(Llayout/SearchFragment;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;)V
    .locals 0

    .line 35
    iput-object p1, p0, Llayout/SearchFragment;->geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Llayout/SearchFragment;

    invoke-virtual {p0, p1}, Llayout/SearchFragment_MembersInjector;->injectMembers(Llayout/SearchFragment;)V

    return-void
.end method

.method public injectMembers(Llayout/SearchFragment;)V
    .locals 1

    .line 29
    iget-object v0, p0, Llayout/SearchFragment_MembersInjector;->geocodingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    invoke-static {p1, v0}, Llayout/SearchFragment_MembersInjector;->injectGeocodingManager(Llayout/SearchFragment;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;)V

    .line 30
    iget-object v0, p0, Llayout/SearchFragment_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Llayout/SearchFragment_MembersInjector;->injectAnalyticsManager(Llayout/SearchFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-void
.end method
