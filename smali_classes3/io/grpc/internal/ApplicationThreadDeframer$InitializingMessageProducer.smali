.class Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;
.super Ljava/lang/Object;
.source "ApplicationThreadDeframer.java"

# interfaces
.implements Lio/grpc/internal/StreamListener$MessageProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ApplicationThreadDeframer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializingMessageProducer"
.end annotation


# instance fields
.field private initialized:Z

.field private final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lio/grpc/internal/ApplicationThreadDeframer;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 176
    iput-boolean p1, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->initialized:Z

    .line 179
    iput-object p2, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;Lio/grpc/internal/ApplicationThreadDeframer$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;-><init>(Lio/grpc/internal/ApplicationThreadDeframer;Ljava/lang/Runnable;)V

    return-void
.end method

.method private initialize()V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->initialized:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->initialized:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public next()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 192
    invoke-direct {p0}, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->initialize()V

    .line 193
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$InitializingMessageProducer;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/ApplicationThreadDeframer;->access$300(Lio/grpc/internal/ApplicationThreadDeframer;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method
