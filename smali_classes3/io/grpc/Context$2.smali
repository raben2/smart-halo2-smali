.class Lio/grpc/Context$2;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/Context;->wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/Context;

.field final synthetic val$c:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lio/grpc/Context;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lio/grpc/Context$2;->this$0:Lio/grpc/Context;

    iput-object p2, p0, Lio/grpc/Context$2;->val$c:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lio/grpc/Context$2;->this$0:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    .line 649
    :try_start_0
    iget-object v1, p0, Lio/grpc/Context$2;->val$c:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    iget-object v2, p0, Lio/grpc/Context$2;->this$0:Lio/grpc/Context;

    invoke-virtual {v2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/grpc/Context$2;->this$0:Lio/grpc/Context;

    invoke-virtual {v2, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v1
.end method
