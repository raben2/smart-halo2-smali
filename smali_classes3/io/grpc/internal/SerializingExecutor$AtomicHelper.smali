.class abstract Lio/grpc/internal/SerializingExecutor$AtomicHelper;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/SerializingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AtomicHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/SerializingExecutor$1;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lio/grpc/internal/SerializingExecutor$AtomicHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract runStateCompareAndSet(Lio/grpc/internal/SerializingExecutor;II)Z
.end method

.method public abstract runStateSet(Lio/grpc/internal/SerializingExecutor;I)V
.end method
