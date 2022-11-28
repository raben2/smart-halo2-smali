.class Lio/grpc/Metadata$1;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Lio/grpc/Metadata$BinaryMarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/Metadata$BinaryMarshaller<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parseBytes([B)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lio/grpc/Metadata$1;->parseBytes([B)[B

    move-result-object p1

    return-object p1
.end method

.method public parseBytes([B)[B
    .locals 0

    return-object p1
.end method

.method public bridge synthetic toBytes(Ljava/lang/Object;)[B
    .locals 0

    .line 77
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/grpc/Metadata$1;->toBytes([B)[B

    move-result-object p1

    return-object p1
.end method

.method public toBytes([B)[B
    .locals 0

    return-object p1
.end method
