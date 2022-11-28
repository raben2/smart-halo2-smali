.class public final Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity_MembersInjector;
.super Ljava/lang/Object;
.source "ConnectToNewDeviceActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity_MembersInjector;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalyticsManager(Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity_MembersInjector;->injectMembers(Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;)V

    return-void
.end method
