.class public final Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule_ProvidesMainThreadSchedulerFactory;
.super Ljava/lang/Object;
.source "SchedulerModule_ProvidesMainThreadSchedulerFactory.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lio/reactivex/Scheduler;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule_ProvidesMainThreadSchedulerFactory;->module:Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule;

    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule;)Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule_ProvidesMainThreadSchedulerFactory;
    .locals 1

    .line 29
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule_ProvidesMainThreadSchedulerFactory;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule_ProvidesMainThreadSchedulerFactory;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule;)V

    return-object v0
.end method

.method public static providesMainThreadScheduler(Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule;)Lio/reactivex/Scheduler;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule;->providesMainThreadScheduler()Lio/reactivex/Scheduler;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method


# virtual methods
.method public get()Lio/reactivex/Scheduler;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule_ProvidesMainThreadSchedulerFactory;->module:Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule_ProvidesMainThreadSchedulerFactory;->providesMainThreadScheduler(Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule_ProvidesMainThreadSchedulerFactory;->get()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
