.class Lio/grpc/internal/ApplicationThreadDeframer$7;
.super Ljava/lang/Object;
.source "ApplicationThreadDeframer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ApplicationThreadDeframer;->deframeFailed(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ApplicationThreadDeframer;

.field final synthetic val$cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Throwable;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lio/grpc/internal/ApplicationThreadDeframer$7;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    iput-object p2, p0, Lio/grpc/internal/ApplicationThreadDeframer$7;->val$cause:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$7;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/ApplicationThreadDeframer;->access$100(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/MessageDeframer$Listener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ApplicationThreadDeframer$7;->val$cause:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/grpc/internal/MessageDeframer$Listener;->deframeFailed(Ljava/lang/Throwable;)V

    return-void
.end method
