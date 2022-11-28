.class Lio/sentry/android/core/LifecycleWatcher$1;
.super Ljava/util/TimerTask;
.source "LifecycleWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/LifecycleWatcher;->scheduleEndSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/android/core/LifecycleWatcher;


# direct methods
.method constructor <init>(Lio/sentry/android/core/LifecycleWatcher;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher$1;->this$0:Lio/sentry/android/core/LifecycleWatcher;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 103
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher$1;->this$0:Lio/sentry/android/core/LifecycleWatcher;

    const-string v1, "end"

    invoke-static {v0, v1}, Lio/sentry/android/core/LifecycleWatcher;->access$000(Lio/sentry/android/core/LifecycleWatcher;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher$1;->this$0:Lio/sentry/android/core/LifecycleWatcher;

    invoke-static {v0}, Lio/sentry/android/core/LifecycleWatcher;->access$100(Lio/sentry/android/core/LifecycleWatcher;)Lio/sentry/IHub;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IHub;->endSession()V

    .line 105
    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher$1;->this$0:Lio/sentry/android/core/LifecycleWatcher;

    invoke-static {v0}, Lio/sentry/android/core/LifecycleWatcher;->access$200(Lio/sentry/android/core/LifecycleWatcher;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
