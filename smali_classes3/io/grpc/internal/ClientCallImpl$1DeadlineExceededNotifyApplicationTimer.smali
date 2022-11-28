.class Lio/grpc/internal/ClientCallImpl$1DeadlineExceededNotifyApplicationTimer;
.super Ljava/lang/Object;
.source "ClientCallImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ClientCallImpl;->startDeadlineNotifyApplicationTimer(Lio/grpc/Deadline;Lio/grpc/ClientCall$Listener;)Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeadlineExceededNotifyApplicationTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ClientCallImpl;

.field final synthetic val$observer:Lio/grpc/ClientCall$Listener;

.field final synthetic val$remainingNanos:J


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientCallImpl;JLio/grpc/ClientCall$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$1DeadlineExceededNotifyApplicationTimer;->this$0:Lio/grpc/internal/ClientCallImpl;

    iput-wide p2, p0, Lio/grpc/internal/ClientCallImpl$1DeadlineExceededNotifyApplicationTimer;->val$remainingNanos:J

    iput-object p4, p0, Lio/grpc/internal/ClientCallImpl$1DeadlineExceededNotifyApplicationTimer;->val$observer:Lio/grpc/ClientCall$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 354
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$1DeadlineExceededNotifyApplicationTimer;->this$0:Lio/grpc/internal/ClientCallImpl;

    iget-wide v1, p0, Lio/grpc/internal/ClientCallImpl$1DeadlineExceededNotifyApplicationTimer;->val$remainingNanos:J

    invoke-static {v0, v1, v2}, Lio/grpc/internal/ClientCallImpl;->access$300(Lio/grpc/internal/ClientCallImpl;J)Lio/grpc/Status;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$1DeadlineExceededNotifyApplicationTimer;->this$0:Lio/grpc/internal/ClientCallImpl;

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$1DeadlineExceededNotifyApplicationTimer;->val$observer:Lio/grpc/ClientCall$Listener;

    invoke-static {v1, v0, v2}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;Lio/grpc/Status;Lio/grpc/ClientCall$Listener;)V

    return-void
.end method
