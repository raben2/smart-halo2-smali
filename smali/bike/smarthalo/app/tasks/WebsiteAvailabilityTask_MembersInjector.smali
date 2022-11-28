.class public final Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask_MembersInjector;
.super Ljava/lang/Object;
.source "WebsiteAvailabilityTask_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
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
            "Lokhttp3/OkHttpClient;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask_MembersInjector;->clientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask_MembersInjector;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectClient(Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->client:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask_MembersInjector;->clientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    invoke-static {p1, v0}, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask_MembersInjector;->injectClient(Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask_MembersInjector;->injectMembers(Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;)V

    return-void
.end method
