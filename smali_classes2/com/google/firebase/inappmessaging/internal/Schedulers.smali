.class public Lcom/google/firebase/inappmessaging/internal/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final computeScheduler:Lio/reactivex/Scheduler;

.field private final ioScheduler:Lio/reactivex/Scheduler;

.field private final mainThreadScheduler:Lio/reactivex/Scheduler;


# direct methods
.method constructor <init>(Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p1    # Lio/reactivex/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "io"
        .end annotation
    .end param
    .param p2    # Lio/reactivex/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "compute"
        .end annotation
    .end param
    .param p3    # Lio/reactivex/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "main"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->ioScheduler:Lio/reactivex/Scheduler;

    .line 39
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->computeScheduler:Lio/reactivex/Scheduler;

    .line 40
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->mainThreadScheduler:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public computation()Lio/reactivex/Scheduler;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->computeScheduler:Lio/reactivex/Scheduler;

    return-object v0
.end method

.method public io()Lio/reactivex/Scheduler;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->ioScheduler:Lio/reactivex/Scheduler;

    return-object v0
.end method

.method public mainThread()Lio/reactivex/Scheduler;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/Schedulers;->mainThreadScheduler:Lio/reactivex/Scheduler;

    return-object v0
.end method
