.class public final Llayout/AssistantViewFragment_MembersInjector;
.super Ljava/lang/Object;
.source "AssistantViewFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Llayout/AssistantViewFragment;",
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
    iput-object p1, p0, Llayout/AssistantViewFragment_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

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
            "Llayout/AssistantViewFragment;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Llayout/AssistantViewFragment_MembersInjector;

    invoke-direct {v0, p0}, Llayout/AssistantViewFragment_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalyticsManager(Llayout/AssistantViewFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 29
    iput-object p1, p0, Llayout/AssistantViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Llayout/AssistantViewFragment;

    invoke-virtual {p0, p1}, Llayout/AssistantViewFragment_MembersInjector;->injectMembers(Llayout/AssistantViewFragment;)V

    return-void
.end method

.method public injectMembers(Llayout/AssistantViewFragment;)V
    .locals 1

    .line 24
    iget-object v0, p0, Llayout/AssistantViewFragment_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Llayout/AssistantViewFragment_MembersInjector;->injectAnalyticsManager(Llayout/AssistantViewFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-void
.end method
