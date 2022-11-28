.class public final Lbike/smarthalo/app/controllers/CentralServiceController$1;
.super Ljava/lang/Object;
.source "CentralServiceController.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/CentralServiceController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCentralServiceController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CentralServiceController.kt\nbike/smarthalo/app/controllers/CentralServiceController$1\n*L\n1#1,62:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "bike/smarthalo/app/controllers/CentralServiceController$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
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
.field final synthetic this$0:Lbike/smarthalo/app/controllers/CentralServiceController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/CentralServiceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lbike/smarthalo/app/controllers/CentralServiceController$1;->this$0:Lbike/smarthalo/app/controllers/CentralServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lbike/smarthalo/app/controllers/CentralServiceController$1;->this$0:Lbike/smarthalo/app/controllers/CentralServiceController;

    check-cast p2, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, p2}, Lbike/smarthalo/app/controllers/CentralServiceController;->access$setCentralService$p(Lbike/smarthalo/app/controllers/CentralServiceController;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)V

    .line 52
    iget-object p1, p0, Lbike/smarthalo/app/controllers/CentralServiceController$1;->this$0:Lbike/smarthalo/app/controllers/CentralServiceController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/CentralServiceController;->access$getCentralService$p(Lbike/smarthalo/app/controllers/CentralServiceController;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p2, p0, Lbike/smarthalo/app/controllers/CentralServiceController$1;->this$0:Lbike/smarthalo/app/controllers/CentralServiceController;

    invoke-static {p2}, Lbike/smarthalo/app/controllers/CentralServiceController;->access$getCentralServiceSource$p(Lbike/smarthalo/app/controllers/CentralServiceController;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object p2

    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lbike/smarthalo/app/controllers/CentralServiceController$1;->this$0:Lbike/smarthalo/app/controllers/CentralServiceController;

    const/4 v0, 0x0

    check-cast v0, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-static {p1, v0}, Lbike/smarthalo/app/controllers/CentralServiceController;->access$setCentralService$p(Lbike/smarthalo/app/controllers/CentralServiceController;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)V

    .line 58
    iget-object p1, p0, Lbike/smarthalo/app/controllers/CentralServiceController$1;->this$0:Lbike/smarthalo/app/controllers/CentralServiceController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/CentralServiceController;->access$getCentralServiceSource$p(Lbike/smarthalo/app/controllers/CentralServiceController;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {v0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method
