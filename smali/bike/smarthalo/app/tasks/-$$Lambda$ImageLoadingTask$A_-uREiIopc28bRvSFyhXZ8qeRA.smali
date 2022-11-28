.class public final synthetic Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$A_-uREiIopc28bRvSFyhXZ8qeRA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/tasks/ImageLoadingTask;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/tasks/ImageLoadingTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$A_-uREiIopc28bRvSFyhXZ8qeRA;->f$0:Lbike/smarthalo/app/tasks/ImageLoadingTask;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/tasks/-$$Lambda$ImageLoadingTask$A_-uREiIopc28bRvSFyhXZ8qeRA;->f$0:Lbike/smarthalo/app/tasks/ImageLoadingTask;

    invoke-static {v0}, Lbike/smarthalo/app/tasks/ImageLoadingTask;->lambda$getTaskObservable$0(Lbike/smarthalo/app/tasks/ImageLoadingTask;)Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;

    move-result-object v0

    return-object v0
.end method
