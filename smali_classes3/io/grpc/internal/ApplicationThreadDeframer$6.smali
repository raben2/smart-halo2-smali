.class Lio/grpc/internal/ApplicationThreadDeframer$6;
.super Ljava/lang/Object;
.source "ApplicationThreadDeframer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ApplicationThreadDeframer;->deframerClosed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ApplicationThreadDeframer;

.field final synthetic val$hasPartialMessage:Z


# direct methods
.method constructor <init>(Lio/grpc/internal/ApplicationThreadDeframer;Z)V
    .locals 0

    .line 155
    iput-object p1, p0, Lio/grpc/internal/ApplicationThreadDeframer$6;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    iput-boolean p2, p0, Lio/grpc/internal/ApplicationThreadDeframer$6;->val$hasPartialMessage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 158
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$6;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/ApplicationThreadDeframer;->access$100(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/MessageDeframer$Listener;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/internal/ApplicationThreadDeframer$6;->val$hasPartialMessage:Z

    invoke-interface {v0, v1}, Lio/grpc/internal/MessageDeframer$Listener;->deframerClosed(Z)V

    return-void
.end method
