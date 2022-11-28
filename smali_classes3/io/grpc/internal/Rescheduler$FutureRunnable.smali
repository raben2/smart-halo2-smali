.class final Lio/grpc/internal/Rescheduler$FutureRunnable;
.super Ljava/lang/Object;
.source "Rescheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/Rescheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FutureRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/Rescheduler;


# direct methods
.method private constructor <init>(Lio/grpc/internal/Rescheduler;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lio/grpc/internal/Rescheduler$FutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/Rescheduler;Lio/grpc/internal/Rescheduler$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lio/grpc/internal/Rescheduler$FutureRunnable;-><init>(Lio/grpc/internal/Rescheduler;)V

    return-void
.end method

.method static synthetic access$900(Lio/grpc/internal/Rescheduler$FutureRunnable;)Z
    .locals 0

    .line 77
    invoke-direct {p0}, Lio/grpc/internal/Rescheduler$FutureRunnable;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private isEnabled()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lio/grpc/internal/Rescheduler$FutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    invoke-static {v0}, Lio/grpc/internal/Rescheduler;->access$300(Lio/grpc/internal/Rescheduler;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 80
    iget-object v0, p0, Lio/grpc/internal/Rescheduler$FutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    invoke-static {v0}, Lio/grpc/internal/Rescheduler;->access$200(Lio/grpc/internal/Rescheduler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;

    iget-object v2, p0, Lio/grpc/internal/Rescheduler$FutureRunnable;->this$0:Lio/grpc/internal/Rescheduler;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/grpc/internal/Rescheduler$ChannelFutureRunnable;-><init>(Lio/grpc/internal/Rescheduler;Lio/grpc/internal/Rescheduler$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
