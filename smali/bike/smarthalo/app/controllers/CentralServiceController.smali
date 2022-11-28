.class public final Lbike/smarthalo/app/controllers/CentralServiceController;
.super Ljava/lang/Object;
.source "CentralServiceController.kt"

# interfaces
.implements Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u000b0\rH\u0016J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/CentralServiceController;",
        "Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "centralService",
        "Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;",
        "centralServiceConnection",
        "Lbike/smarthalo/app/services/AutoRebindingServiceConnection;",
        "centralServiceSource",
        "Lio/reactivex/processors/FlowableProcessor;",
        "Lbike/smarthalo/app/models/GenericResponse;",
        "getAndObserveCentralService",
        "Lio/reactivex/Flowable;",
        "getCentralService",
        "isBound",
        "",
        "onDispose",
        "",
        "onStart",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private final centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private final centralServiceSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 46
    invoke-static {p1}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    const-string v0, "ReplayProcessor.createWi\u2026inder>>(1).toSerialized()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->centralServiceSource:Lio/reactivex/processors/FlowableProcessor;

    .line 47
    iget-object p1, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->centralServiceSource:Lio/reactivex/processors/FlowableProcessor;

    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {v0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 49
    new-instance p1, Lbike/smarthalo/app/controllers/CentralServiceController$1;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/controllers/CentralServiceController$1;-><init>(Lbike/smarthalo/app/controllers/CentralServiceController;)V

    check-cast p1, Landroid/content/ServiceConnection;

    .line 60
    iget-object v0, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->context:Landroid/content/Context;

    .line 48
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    const-string v0, "AutoRebindingServiceConn\u2026              }, context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method public static final synthetic access$getCentralService$p(Lbike/smarthalo/app/controllers/CentralServiceController;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 20
    iget-object p0, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p0
.end method

.method public static final synthetic access$getCentralServiceSource$p(Lbike/smarthalo/app/controllers/CentralServiceController;)Lio/reactivex/processors/FlowableProcessor;
    .locals 0

    .line 20
    iget-object p0, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->centralServiceSource:Lio/reactivex/processors/FlowableProcessor;

    return-object p0
.end method

.method public static final synthetic access$setCentralService$p(Lbike/smarthalo/app/controllers/CentralServiceController;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-void
.end method


# virtual methods
.method public getAndObserveCentralService()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-object v0, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->centralServiceSource:Lio/reactivex/processors/FlowableProcessor;

    check-cast v0, Lio/reactivex/Flowable;

    return-object v0
.end method

.method public getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 30
    iget-object v0, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDispose()V
    .locals 1

    .line 42
    iget-object v0, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 26
    iget-object v0, p0, Lbike/smarthalo/app/controllers/CentralServiceController;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    return-void
.end method
