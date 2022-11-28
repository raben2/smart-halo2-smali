.class public interface abstract Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;
.super Ljava/lang/Object;
.source "CentralServiceControllerContract.kt"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003H&J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&J\u0008\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;",
        "Lbike/smarthalo/app/controllers/SHDisposable;",
        "getAndObserveCentralService",
        "Lio/reactivex/Flowable;",
        "Lbike/smarthalo/app/models/GenericResponse;",
        "Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;",
        "getCentralService",
        "isBound",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract getAndObserveCentralService()Lio/reactivex/Flowable;
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
.end method

.method public abstract getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isBound()Z
.end method
