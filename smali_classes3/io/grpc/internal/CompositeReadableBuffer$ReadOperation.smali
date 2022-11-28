.class abstract Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;
.super Ljava/lang/Object;
.source "CompositeReadableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CompositeReadableBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ReadOperation"
.end annotation


# instance fields
.field ex:Ljava/io/IOException;

.field value:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/CompositeReadableBuffer$1;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;-><init>()V

    return-void
.end method


# virtual methods
.method final isError()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->ex:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final read(Lio/grpc/internal/ReadableBuffer;I)V
    .locals 0

    .line 220
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->readInternal(Lio/grpc/internal/ReadableBuffer;I)I

    move-result p1

    iput p1, p0, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->value:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    iput-object p1, p0, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->ex:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method abstract readInternal(Lio/grpc/internal/ReadableBuffer;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
